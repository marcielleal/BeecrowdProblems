i=0
par=impar=pos=neg=0
while i<5 do
	a=gets.to_i
	if a%2==0 then par+=1
	else impar+=1
	end
	if a>0 then pos+=1
	elsif a<0 then neg+=1
	end
	i+=1
end
puts "#{par} valor(es) par(es)"
puts "#{impar} valor(es) impar(es)"
puts "#{pos} valor(es) positivo(s)"
puts "#{neg} valor(es) negativo(s)"
