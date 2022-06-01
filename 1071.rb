x=gets.to_i
y=gets.to_i
soma=0
if y>x then x,y=y,x end
for i in ((y+1)..(x-1)) do
	soma+=i if i%2==1
end
puts soma
