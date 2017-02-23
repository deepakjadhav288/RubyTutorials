require 'socket'
s = TCPSocket.new 'localhost',1234
line = s.gets
puts line
s.close