#include <queue>
#ifndef PID_H
#define PID_H
#endif 
#define QUEUE_SIZE 20
class PID {
private:
	struct Point{
		double x;
		double y;
	};
	Point current;
	Point previous;
	std::queue<double> areaQueue;
	double target;
	double proportion;
	double integral;
	double derivative;
	double K_p;
	double K_i;
	double K_d;
	

	void updateProportion();
	void updateIntegral();
	void updateDerivative();
													
public:
	PID(double, double, double, double);
	PID(double, double, double);
	void sendData(double, double);
	double getAdjustment();
	void setTarget(double);
	void setConstants(double, double, double);
	void print();
};
