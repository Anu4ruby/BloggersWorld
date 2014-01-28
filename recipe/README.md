
name = ['Anupama', 'Pu', 'Joelle', 'Rajani']
secret = name[rand(4)]

print "tell my name? "
while tell = STDIN.gets
# Need to chop as there is new line or enter after the word user will enter
 # p tell
  tell.chop!
  # p tell
  if tell == secret
    puts "You win!"
    break
  else
    puts "Sorry, you lose."
  end
  print "tell my name? "
end
puts "The word was "+ secret+ "."