media=0.0
num=0
condition=true

while condition do
	nota=gets.to_f
	if nota>=0 and nota<=10 then
		media+=nota
		num+=1
	else puts "nota invalida"
	end
	if num==2 then
		puts "media = %.2f" %(media/2)
		condition=false
	end
end
