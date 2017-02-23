require 'socket'
server = TCPServer.new 1234
terminate = "bye"
client_no = 0.to_i
loop {
	client = server.accept
	client_no+=1
	Thread.start(client,client_no) {|child,id|

	loop{
		line = child.gets
		puts "client #{id} :#{line}"
		line.chop!
		if line.casecmp(terminate)==0
			puts "child #{id} close"
			child.close
		else
			child.puts "#{line.swapcase}"
		end		
		
		}
	}
}

