#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include <stdlib.h>
#ifndef COLORTRACKER_H
#define COLORTRACKER_H
using namespace cv;

class CameraColorTrack{
private:
	CameraColorTrack();
	VideoCapture webcam;
	Mat currentFrame, HSVFrame, thresholdFrame, erodeFrame, dilateFrame, cannyFrame, outputFrame;
	int* HSVRanges = new int[6];
	Mat erodeElement = Mat();//Default is 3x3, use getStructuring Element for more
	Mat dilateElement = Mat();//Default is 3x3, use getStructuring Element for more
	std::vector<std::vector<Point> > contours;
	int cannyThreshold = 100; //edge detection
	RotatedRect largestRect = RotatedRect(Point2f(0,0), Size2f(0,0), 0);


public:
	CameraColorTrack(const int);
	CameraColorTrack(const int, const int&, const int&, const int&, const int&, const int&, const int&);//HSV Ranges
	void setHSVRanges(const int&, const int&, const int&, const int&, const int&, const int&);//HSV Ranges
	int * getHSVRanges();
	void getNextFrame();
	void processFrame();
	void showFrames();	
	Point2f getRectangleCenter();
	Size getFrameSize();
	Size getFrameCenter();
};
#endif
