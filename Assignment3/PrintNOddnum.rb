a = gets.chomp.to_i
p "The number entered by user is " + a.to_s
i=1
p "The " + a.to_s + " odd numbers from 1 are:"
p i
a.times do
i= i+2
p i
end