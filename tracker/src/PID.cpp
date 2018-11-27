#include <PID.hpp>
#include <iostream>
#include <stdlib.h>


using namespace std;

void PID::updateProportion(){
	this->proportion = this->current.y;
}

void PID::updateIntegral() {
	double newArea = this->current.y*(this->current.x - this->previous.x);
	this->integral += newArea;
	areaQueue.push(newArea);
	this->integral -= (double) areaQueue.front();
	areaQueue.pop();
}

void PID::updateDerivative() {
	this->derivative = (this->current.y - this->previous.y)/(this->current.x - this->previous.x);
}

PID::PID(double target, double kP, double kI, double kD){
	for(int i = 0; i < QUEUE_SIZE; i++){
		areaQueue.push(0);
	}
	this->current = {0, 0};
	this->setTarget(target);
	this->setConstants(kP, kI, kD);
}

PID::PID(double kP, double kI, double kD){
	for(int i = 0; i < QUEUE_SIZE; i++){
		areaQueue.push(0);
	}
	this->setTarget(0);
	this->setConstants(kP, kI, kD);
}

void PID::sendData(double time, double location){
	this->previous = current;
	this->current = {time, (location-target)};
	this->updateProportion();
	this->updateIntegral();
	this->updateDerivative();
}

double PID::getAdjustment() {
	double pTerm = this->K_p*this->proportion;
	double iTerm = this->K_i*this->integral;
	double dTerm = this->K_d*this->derivative;
	return pTerm + iTerm + dTerm;
}

void PID::setTarget(double newTarget) {
	this->target = newTarget;
}

void PID::setConstants(double kP, double kI, double kD) {
	this->K_p = kP;
	this->K_i = kI;
	this->K_d = kD;
	this->integral = 0;
}

void PID::print() {
	cout << "P:" << this->proportion << endl;
	cout << "I:" << this->integral << endl;
	cout << "D:" << this->derivative << endl;
	cout << "Adjustment:" << this->getAdjustment() << endl;
}


int main1() {
	double b = 1;
	double c = 0;
	PID pid = PID(b, c, c, c);
	while (true) {
		double time;
		double location;
		cout << "time" << endl;
		cin >> time;
		cout << "location" << endl;
		cin >> location;
		pid.sendData(time, location);
		pid.print();
	}

	return 0;
}
