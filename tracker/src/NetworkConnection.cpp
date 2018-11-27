#include <NetworkConnection.hpp>
#include <sstream>
//taken from https://github.com/jpbarrette/curlpp/blob/master/examples/example00.cpp
void sendCommand(const std::string command){

	try{
		std::stringstream empty;
		curlpp::Cleanup myCleanup;
		curlpp::Easy myRequest;
		myRequest.setOpt(cURLpp::Options::WriteStream(&empty));
		myRequest.setOpt<Url>("http://localhost:8000/run/?action=" + command);
		myRequest.perform();
	}catch(curlpp::RuntimeError &e){
		std::cout<<e.what()<<std::endl;
	}catch(curlpp::LogicError &e){
		std::cout<<e.what()<<std::endl;
	}
}             
