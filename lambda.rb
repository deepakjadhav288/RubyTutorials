def n_times(thing)
return lambda {|n| thing * n }
end
p1 = n_times(23)
p p1.call(3)

p p1.call(4)

p2 = n_times("Hello ")
p p2.call(3)
p p1.call(4)
