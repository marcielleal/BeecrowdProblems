ent= gets.strip.split(/\s+/).map(&:to_f)
x=ent[0]
y=ent[1]

if x%y==0 or y% x==0 then
    puts "Sao Multiplos"
else puts "Nao sao Multiplos"
end
