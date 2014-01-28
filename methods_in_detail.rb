# def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
#   expr..
# end

# def method_name
#   expr..
# end

# def method_name (var1, var2)
#   expr..
# end

# def method_name (var1=value1, var2=value2)
#   expr..
# end

# method_name

# method_name 25, 30

def test(a1="Ruby", a2="Perl")
  puts "The programming language is #{a1}"
  puts "The programming language is #{a2}"
end
test "C", "C++"
test

def hello(name, *args, address)
  p name
  p args
  p address
  #return 1,2,3
  return name
end

hi = hello('gourav', 1,2,3,4, 'NYC')
p hi.to_s
p hi.class

 undef hello
 def hello
   p 'hiiii'
 end
  
 hello

# # alias new_name old_name
 alias new_test test 
 new_test
 test
# sequence of params evaluation??? 
# Left to right like C or right to left like Pascal? The answer is Left to right
def param_sequence(a=9, b=a+1)  
 [a,b]
end  

puts param_sequence # displays 9, 10 

# params passed by value or reference?

def capcase(string)  
 string.upcase
end  
a = "hello"  
capcase(a)      # -> "HELLO"  
puts a         # -> "hello"  

def capcase(string)  
 string.upcase!  
end  

a = "hello"  
capcase(a)      # -> "HELLO"  
puts a         # -> "HELLO" 


# http://rubylearning.com/satishtalim/ruby_names.html
# http://rubylearning.com/satishtalim/writing_own_ruby_methods.html