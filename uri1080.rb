max=gets.to_i
pos=1
t=2
until t>100 do
	a=gets.to_i
	if a>max then
		max=a
		pos=t
	end
	t+=1
end
puts max
puts pos
