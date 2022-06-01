ent= gets.strip.split(/\s+/).map(&:to_f)
x=ent[0]
y=ent[1]

if x==0 or y==0 then
    if x==0 and y==0 then puts "Origem"
    elsif x==0 then puts "Eixo Y"
    elsif y==0 then puts "Eixo X"
    end
elsif x>0 then 
    if y>0 then puts "Q1"
    elsif y<0 then puts "Q4"
    end
elsif x<0 then
    if y>0 then puts "Q2"
    elsif y<0 then puts "Q3"
    end
end
            
