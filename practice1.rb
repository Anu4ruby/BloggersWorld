# def pre_process(a)
#   word = a.downcase.scan(/[\w']+/)
# end

# def find_count(word)
#     c = Hash.new(0)
#     for a in word
#     c[a] +=1
#     end
#      c
# end

# word = pre_process("hi hi  ji ji ki ki ki ki ki  anu anu lo lo lo")
# p find_count(word)
# p find_count(word).sort_by{|word,count| count}
# p find_count(word).sort_by{|word,count| count}. last(3)

# class Shape
    
#     def initialize
#         sides = 5
#     end
#     def draw
#         puts sides
#     end
# end


# square = Shape.new


# # sum = 0
# # [1, 2, 3, 4].each do |value |
# # square = value * value # this is a different variable
# # cube = value*value*value
# # some_local_variable = "hi"
# # sum += square
# # end
# # puts sum
# # puts cube
# # puts some_local_variable
# # puts square.draw

# sum = 0
# [1, 2, 3, 4].each do |value; square|
# square = value * value # this is a different variable
# sum += square
# end
# puts sum
# puts square


# class Person
# include Comparable
# attr_reader :name
# def initialize(name)
# @name = name
# end
# def to_s
# "#{@name}"
# end
# def <=>(other)
# self.name.size <=> other.name.size
# end
# end
# p1 = Person.new("Matz")
# p2 = Person.new("Guid")
# p3 = Person.new("Larry")
# # Compare a couple of names
# if p1 > p2
# puts "#{p1.name}'s name > #{p2.name}'s name"
# end


# # Sort an array of Person objects
# puts "Sorted list:"
# puts [ p1, p2, p3].sort

# if p1 > p2
#     puts "true"
     
# else
#     puts "false"
     
# end

# if p1 = p2
#     puts "true"
# end









# triangular_numbers = Enumerator.new do |yielder|
# number = 0
# count = 1
# loop do
# number += count
# count += 1
# yielder.yield number
# end
# end

# def infinite_select(enum, &block)
# Enumerator.new do |yielder|
# enum.each do |value|
# yielder.yield(value) if block.call(value)
# end
# end
# end
# p infinite_select(triangular_numbers) {|val| val % 10 == 0}.first(5)

 
 
 
class ScoreKeeper
def initialize
@total_score = 0
@count = 0
end
def <<(score)
@total_score += score
@count += 1
self
end

def average
fail "No scores" if @count == 0
Float(@total_score) / @count
end
end
scores = ScoreKeeper.new
p scores << 10 << 20 << 40
puts "Average = #{scores.average}"
