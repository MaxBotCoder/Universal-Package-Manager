#include <iostream>

int main(){

    std::cout << "\n" << "Hello and welcome to the test applications, which tests the ability to take in terminal command input, this code will later turn into the terminal interface for U.P.M. that would be used before the GUI and eventualy along side it" << "\n";

    std::string command = "";

    while(command != "stop"){

        std::cout << "\n" << "Enter commands here: ";

        std::cin >> command;

        std::cout << "\n" << command << "\n";

    }

    if(command != "stop"){

        exit(false);

    } else if (command == "stop"){
        
        exit(true);

    }


}
