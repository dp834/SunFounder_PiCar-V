#include <iostream>
#include <string>
#include <curlpp/cURLpp.hpp>
#include <curlpp/Options.hpp>
#include <curlpp/Easy.hpp>

using namespace curlpp::options;

#ifndef NETWORKCOMMAND_H
#define NETWORKCOMMAND_H
void sendCommand(const std::string);
#endif
