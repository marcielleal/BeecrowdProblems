ent= gets.strip.split(/\s+/).map(&:to_f)
a=ent[0]
b=ent[1]
c=ent[2]
a2=a**2
b2=b**2
c2=c**2

if a>=(b+c) or b>=(a+c) or c>=(a+b) then puts "NAO FORMA TRIANGULO"
elsif a2==(b2+c2) or b2==(a2+c2) or c2==(a2+b2) then puts "TRIANGULO RETANGULO"
elsif a2>(b2+c2) or b2>(a2+c2) or c2>(a2+b2) then puts "TRIANGULO OBTUSANGULO"
elsif a2<(b2+c2) or b2<(a2+c2) or c2<(a2+b2) then puts "TRIANGULO ACUTANGULO"
end

if a==b and b==c then puts "TRIANGULO EQUILATERO"
elsif a==b or b==c or a==c then puts "TRIANGULO ISOSCELES"
end
