arr = (1..50).to_a.sample(20).sort
m = arr.length/2

p arr
p m

arr.slice!(m..-1)

p arr