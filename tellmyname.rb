
name = ['Anupama', 'Pu', 'Joelle', 'Rajani']
secret = name[rand(4)]

print "tell my name? "
while tell = STDIN.gets
#while tell = gets.chomp.to_s
# Need to chop as there is new line or enter after the word user will enter
  p tell
  tell.chop!
  # chop! is same as tell = tell.chop, without the bang tell.chop will not modify the original string but a copy of it and is local and is lost!
  p tell
  if tell == secret
    puts "You win!"
    break
  else
    puts "Sorry, you lose."
  end
  print "tell my name? "
end
puts "The word was "+ secret+ "."