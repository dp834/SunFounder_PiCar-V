#include "ColorTracker.hpp"
#include <iostream>

CameraColorTrack::CameraColorTrack(const int camnum){
	webcam = VideoCapture(camnum);
	setHSVRanges(0, 0, 0, 180, 255, 255);
}


CameraColorTrack::CameraColorTrack(const int camnum, const int& lH, const int& lS, const int& lV, const int& hH, const int& hS, const int& hV){//HSV Ranges
	webcam = VideoCapture(camnum);
	assert(hH <= 180);
	setHSVRanges(lH, lS, lV, hH, hS, hV);
}

void CameraColorTrack::setHSVRanges(const int& lH, const int& lS, const int& lV, const int& hH, const int& hS, const int& hV){//HSV Ranges
	HSVRanges[0] = lH; 
	HSVRanges[1] = lS;
	HSVRanges[2] = lV;
	HSVRanges[3] = hH;
	HSVRanges[4] = hS;
	HSVRanges[5] = hV;
}

int * CameraColorTrack::getHSVRanges(){
	return HSVRanges;
}

void CameraColorTrack::getNextFrame(){
	webcam >> currentFrame;
	if(currentFrame.empty()){
		return;
	}
}

void CameraColorTrack::processFrame(){
	cvtColor(currentFrame, HSVFrame, COLOR_BGR2HSV);
	inRange(HSVFrame, Scalar(HSVRanges[0],HSVRanges[1],HSVRanges[2]), 
			Scalar(HSVRanges[3],HSVRanges[4],HSVRanges[5]), thresholdFrame);
	erode(~thresholdFrame, erodeFrame, getStructuringElement(MORPH_CROSS, Size(3, 3), Point(1,1))/*erodeElement*/, Point(-1, -1)/*default center*/, 2);

	dilate(erodeFrame, dilateFrame, dilateElement, Point(-1, -1)/*default center*/, 1);
	Canny(dilateFrame, cannyFrame, cannyThreshold, cannyThreshold*2);
	findContours(cannyFrame, contours, RETR_TREE, CHAIN_APPROX_SIMPLE);
	

	int indexOfLargestRect;
	double largestArea = 0;
	for( int i = 0; i < contours.size(); i++){
		if(contourArea(contours[i]) > largestArea){
			largestArea = contourArea(contours[i]);
			indexOfLargestRect = i;
		}
	}
	
	//testing
	imshow("canny", cannyFrame);

	outputFrame = Mat::zeros(cannyFrame.size(), CV_8UC3);
	if(!indexOfLargestRect){
		largestRect= minAreaRect(contours[indexOfLargestRect]);
		drawContours(outputFrame, contours, indexOfLargestRect, Scalar(0,0,255), 2);
	}
		//testing
		rectangle(outputFrame, largestRect.boundingRect(), Scalar(255, 0, 0), 2);
}

Point2f CameraColorTrack::getRectangleCenter(){
	return largestRect.center;
}

Size CameraColorTrack::getFrameSize(){
	return currentFrame.size();
}

Size CameraColorTrack::getFrameCenter(){
	if(currentFrame.size() == Size(0,0)){
		webcam >> currentFrame;
	}
	Size s = currentFrame.size();
	return Size((int) s.width/2, (int) s.height/2);
}

void CameraColorTrack::showFrames(){	
	namedWindow("Original Frame", WINDOW_AUTOSIZE);
	imshow("Original Frame", currentFrame);
	namedWindow("Output Frame", WINDOW_AUTOSIZE);
	imshow("Output Frame", outputFrame);
}

