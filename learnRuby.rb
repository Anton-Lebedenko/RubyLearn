=begin  #Block 1

age = 42
puts "He is #{age} years old"

x, y, z = 10, 20, 30

### ** - наивысший приоритет, дальше умножение, деление, деление по модулю слева направо, а затем сложение и вычитание слева направо.

text = 'Ruby\'s syntax is fun'
puts text

a = "Hi "
b = "there"
puts a + b  #"Hi there"

puts a*3  #"Hi Hi Hi"

puts '5' * 4  #5555

x = gets
puts x

puts "Enter your name"
name = gets.chomp
puts "Welcome, #{name}"

=end  #Block 1

=begin  #Block 2

# nil - отсутствие значения
# Булевыми значениями явл только true и false, nil не является.
# не-Булевое значение, которое явл истинным, называется "truthy", а не-Булевое значение, которое явл ложным, нызвается "falsey"
# в Ruby только false и nil являются falsey. Все остальное явл truthy (даже 0 явл truthy).


puts 3 == 3.0 # true
puts 3.eql?(3.0) # false

a = 42
unless a < 10
  puts "Yes"
else
  puts "No"
end
# "Yes"

puts "Yes" if a > 10
puts "Yes" if a < 10


age = 4

case age
when 1,2,3
  puts "Little boy"
when 4,5
  puts "Child"
else
  puts "not a baby"
end


a = 0
until a > 10
  puts "a = #{a}"
  a+=2
end
#0,2,4,6,8,10

=end



























