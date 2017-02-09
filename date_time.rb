time2 = Time.new
puts "Time: #{time2.inspect}"

puts "Year : #{time2.year}"
puts "Month : #{time2.month}"
puts "Day  : #{time2.day}"
puts "Week Day : #{time2.wday}"
puts "Year Day : #{time2.yday}"
puts "Hour  :  #{time2.hour}"
puts "Minute : #{time2.min}"
puts "Seconds : #{time2.sec}"
puts "U sec   : #{time2.usec}"
puts "Zone   : #{time2.zone}"
puts "Local Time : #{time2.localtime}"
puts "getlocal : #{time2.getlocal}"
puts "time.to_s : #{time2.to_s}"
puts "ctime  : #{time2.ctime}"
puts "strftime : #{time2.strftime("%Y-%m-%d   %I:%M:%S %P")}" #time formatting directives (%Y,%m, ....) used with strftime()


#------------ Time Arithmetic -------------
now = Time.now
future = now+60
puts "#{now}-->#{future}"