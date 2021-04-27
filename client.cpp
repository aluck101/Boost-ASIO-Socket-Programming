//
// Created by Tunde Aluko on 27.04.21.
//
#include <iostream>
#include <boost//asio.hpp>
int main() {
    boost::system::error_code ec;
    boost::asio::io_context context;

    //Creates a socket
    boost::asio::ip::tcp::socket socket(context);

    boost::asio::ip::tcp::endpoint endpoint(boost::asio::ip::make_address("127,0,0,1", ec), 42);

    //Conection
    socket.connect(endpoint, ec);

    //Message from client truck
    const std::string message = "Truck1 reporting! \n";
    boost::asio::write(socket, boost::asio::buffer(message), ec);

    if(!ec) {
        std::cout << "Truck1 sent a message successfully! " << std::endl;
    } else {
        std::cout << "Truck1 send message failed " << ec.message() << std::endl;
    }

    //Receive response from the server
    boost::asio::streambuf rec_buffer;
    boost::asio::read(socket, rec_buffer, boost::asio::transfer_all(), ec);

    if(ec && ec != boost::asio::error::eof) {
        std::cout << "receive failed" << ec.message() << std::endl;
    } else {
        const char* data = boost::asio::buffer_cast<const char*>(rec_buffer.data());
        std::cout << data << std::endl;
    }

    return 0;
}
