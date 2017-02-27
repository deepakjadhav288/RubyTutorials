a = Thread.new {raise ("die now")}
b = Thread.new {Thread.stop}
c = Thread.new {Thread.exit}
d = Thread.new {sleep}

d.kill
puts "a = #{a.status}"
puts "b = #{b.status}"
puts "c = #{c.status}"
puts "d = #{d.status}"
puts "Main = #{Thread.current.status}"
