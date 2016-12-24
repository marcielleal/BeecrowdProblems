t=gets.to_i
until t==0 do
	ent= gets.strip.split(/\s+/).map(&:to_i)
	x=ent[0]
	y=ent[1]
	soma=0
	if y>x then x,y=y,x end
	for i in ((y+1)..(x-1)) do
		soma+=i if i%2==1
	end
	puts soma
	t-=1
end
