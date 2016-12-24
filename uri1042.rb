ent= gets.strip.split(/\s+/).map(&:to_i)
ord=ent.sort

for i in ord do
    puts i
end
puts ""
for i in ent do
    puts i
end
