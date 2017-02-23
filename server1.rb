require 'socket'
server = TCPServer.new 1234
loop do
	puts "waiting for client"
	client = server.accept
	client.puts "hello...!!!"
	client.close
end