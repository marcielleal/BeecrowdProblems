num=gets.to_i
nin=0
nout=0
until num==0 do
    x=gets.to_i
    if x<10 or x>20 then nout+=1
    else nin+=1
    end
    num-=1
end
puts "#{nin} in"
puts "#{nout} out"
