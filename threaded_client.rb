require 'socket'
s = TCPSocket.new 'localhost',1234
msg = "hi"
terminate = "bye"
i=0
loop{
	msg = gets
	msg.chop!
	puts msg
	s.puts(msg)
	if msg.casecmp(terminate)==0
		break
	end
	msg = s.gets
	puts msg
	
}