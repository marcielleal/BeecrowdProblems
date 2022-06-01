valorInicial=gets.to_f
valor=valorInicial.to_i
valorInicial*=100
valorInicial-=valor*100
valorInicial*=10
if valorInicial%10!=0 then valorInicial+=1 end
valorInicial/=10

notas100=0
notas50=0
notas20=0
notas10=0
notas5=0
notas2=0
moedas1=0
moedas50=0
moedas25=0
moedas10=0
moedas5=0
moedas01=0

while valor-100>=0 do
	valor-=100
	notas100+=1
end
while valor-50>=0 do
	valor-=50
	notas50+=1
end

while valor-20>=0 do
	valor-=20
	notas20+=1
end
while valor-10>=0 do
	valor-=10
	notas10+=1
end

while valor-5>=0 do
	valor-=5
	notas5+=1
end
while valor-2>=0 do
	valor-=2
	notas2+=1
end
while valor-1>=0 do
	valor-=1
	moedas1+=1
end


valor=valorInicial.to_i


while valor-50>=0 do
	valor-=50
	moedas50+=1
end
while valor-25>=0 do
	valor-=25
	moedas25+=1
end
while valor-10>=0 do
	valor-=10
	moedas10+=1
end
while valor-5>=0 do
	valor-=5
	moedas5+=1
end

while valor-1>=0 do
	valor-=1
	moedas01+=1
end

puts "NOTAS:" 
puts "%d nota(s) de R$ 100.00" %(notas100)
puts "%d nota(s) de R$ 50.00" %(notas50)
puts "%d nota(s) de R$ 20.00" %(notas20)
puts "%d nota(s) de R$ 10.00" %(notas10)
puts "%d nota(s) de R$ 5.00" %(notas5)
puts "%d nota(s) de R$ 2.00" %(notas2)
puts "MOEDAS:"
puts "%d moeda(s) de R$ 1.00" %(moedas1)
puts "%d moeda(s) de R$ 0.50" %(moedas50)
puts "%d moeda(s) de R$ 0.25" %(moedas25)
puts "%d moeda(s) de R$ 0.10" %(moedas10)
puts "%d moeda(s) de R$ 0.05" %(moedas5)
puts "%d moeda(s) de R$ 0.01" %(moedas01)
