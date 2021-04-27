//
// Created by Tunde Aluko on 27.04.21.
//

#include <iostream>
#include <boost/asio.hpp>

std::string read_data(boost::asio::ip::tcp::socket & socket) {
    boost::asio::streambuf buf;
    boost::asio::read_until( socket, buf, "\n" );
    std::string data = boost::asio::buffer_cast<const char*>(buf.data());
    return data;
}
void send_data(boost::asio::ip::tcp::socket & socket, const std::string& message) {
    const std::string msg = message + "\n";
    boost::asio::write( socket, boost::asio::buffer(message) );
}

int main() {
    boost::asio::io_context context;

    //Create socket
    boost::asio::ip::tcp::socket socket_(context);

    boost::asio::ip::tcp::endpoint endpoint(boost::asio::ip::tcp::v4(), 4242);
    //Listen to New Connection
    boost::asio::ip::tcp::acceptor acceptor(context, endpoint);

    //Await connection
    acceptor.accept(socket_);

    //Write
    std::string msg = read_data(socket_);
    std::cout << msg << std::endl;

    send_data(socket_, "Server is Alive!");
    std::cout << "Truck1 sent a message to the server" << std::endl;



    return 0;
}
