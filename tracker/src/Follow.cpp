#include "ColorTracker.hpp"
#include "NetworkConnection.hpp"
#include "PID.hpp"
#include <chrono>
#include <ctime>
#include <string>

#define DEBUG true

using namespace cv;

int convertAdjustmentToValidValue(double, int, int);

int main(int, char**){
	//CameraColorTrack colorTracker(0, 36, 84, 131, 180, 153, 255);
	CameraColorTrack colorTracker(0, 0, 0, 0, 156, 255, 255);
	PID pid((double) 1, (double) 0, (double) 0);//PID constants
	
	double frameWidthCenter = colorTracker.getFrameCenter().width;
	pid.setTarget(frameWidthCenter);
	int minError = 0 - frameWidthCenter;
	int maxError = frameWidthCenter;
	double rectangleCenterX;

	std::clock_t clockStart = std::clock();
	auto startTime = std::chrono::high_resolution_clock::now();
	sendCommand("forward");
	for(;;){
		colorTracker.getNextFrame();
		colorTracker.processFrame();
		rectangleCenterX = colorTracker.getRectangleCenter().x;
		
		auto currentTime = std::chrono::high_resolution_clock::now();
		double elapsedTime = std::chrono::duration<double, std::milli>(currentTime - startTime).count();
		elapsedTime /= 1000; //time in seconds
		pid.sendData(elapsedTime, rectangleCenterX);
		pid.print();
		std::cout << "Sending command: " << "fwturn:" << convertAdjustmentToValidValue(pid.getAdjustment(), minError, maxError) << std::endl;
		sendCommand("fwturn:" + std::to_string(convertAdjustmentToValidValue(pid.getAdjustment(), minError, maxError)));
		if(DEBUG){
			colorTracker.showFrames();
		}
		if(waitKey(30) >= 0) break;
	}
	sendCommand("stop");
	sendCommand("fwstraight");

	return 0;
}

int convertAdjustmentToValidValue(double adjustment, int minError, int maxError){
	//servo Min Max
	int straight = 87;
	int min = 90-45;
	int max = 135;
	
	double normalizedAdjustment = adjustment/(maxError - minError);

	return (int) (straight + normalizedAdjustment*(max-min));

}





