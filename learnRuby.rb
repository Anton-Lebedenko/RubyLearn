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
#######################################################################################################
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


a = (1..7).to_a
puts a #[1,2,3,4,5,6,7]

b = (1...4).to_a
puts b #[1,2,3]

c = ("a".."d").to_a
puts c #[a,b,c,d]



for i in 1..5
  break if i > 3
  puts i
end

for i in 0..10
  next if i%2 == 0
  puts i
end

x = 0
loop do
  puts x
  x += 1
  break if x > 10
end

=end  #Block 2
##################################################################################################
=begin  #Block 3

arr = [5, "Dave", 15.88, false]
puts arr[0] # 5
puts arr[1] # Dave
puts arr[-1] # false

arr << 9 #enter smth
print arr, "      "

arr.pop
arr.delete_at(2)
print arr


nums = [6,3,8,7,9]
puts nums[1..3]
# [3,8,7]



a = [1,2,3]
b = [4,5]

res = a + b
print res
# 1,2,3,4,5


a = [1,2,3,4,5]
b = [2,4,5,6]

res = a - b
print res
# 1,2,3,4,5


c = a * 3
print c


a = [2,3,7,8]
b = [2,7,9]
print a & b
#[2,7]

a = [2,3,7,8]
b = [2,7,9]
print a | b
#[2,3,7,8,9]


arr = [5,3,8]
res = arr.reverse
print res
#[8,3,5]

arr = [5,3,8]
arr.reverse!
print arr
#[8,3,5]


arrr = [1,2]
arr = ['b','a',arrr, 'a', 'c']
puts arr.include?(arrr)
#true
# if not array - false


ages = { "Ammy" => 23, 5 => 32, [1, "jan"] => "January" }
puts ages["Ammy"]
puts ages[5]
puts ages[[1, "jan"]]
# 23
# 32
# January


h = { :name => "Dave", :age => 28, :gender => "male" }
puts h[:age]  # 28
h = { name:"Dave", age:28, gender:"male" }
puts h[:age]  # 28



car = { :brand=>"BMW", year:2016, color:"red", length:205 }
car.delete(:length)
puts car.key("red") #color

res = car.invert
puts res["BMW"]   #brand
puts res.keys     #BMW, 2016, red
puts res.values   #brand, year, color
puts car.length   #3


arr = [[1,2,3], [4,5,6]]
puts arr[1][2] # 6

cars = {
  bmw: {year:2016, color:"red"},
  mercedes: {year:2012, color:"black"},
  porsche: {year:2014, color:"white"}
}
puts cars[:bmw][:color]  # red
puts cars[:porsche] # {:year=>2014, :color=>"white"}



arr = [2, -4, 6]
sum = 0
arr.each do |x|
  sum += x
end
puts sum  # 4


sizes = { svga: 800, hd: 1366, uhd: 3840 }
sizes.each { |key, value| puts "#{key} => #{value}" }


10.times do
  puts "Hi"
end


text = "I am learning Ruby and it is fun!"
text.downcase!

freqs = {}
freqs.default = 0

text.each_char { |char| freqs[char] += 1 }

("a".."z").each { |x| puts "#{x} : #{freqs[x]}" if freqs[x] > 0 }

=end  #Block 3
#################################################################################################
=begin  #Block 4

def sum (a, b = 2)
  puts a + b
end

x = 1
y = 3
sum(x)      #3
sum(x, y)   #4


def greet(name="")
  if name==""
    puts "Greetings!"
  else
    puts "Welcome, #{name} :)"
  end
end

greet(gets.chomp)
# Welcome, Anton :)
# chomp - without next line sign



def someMethod(*p)
  puts p
end

someMethod(25, "hello", true)   # 25, hello, true

def myMethod(a, b, *p)
  p = [p, 1, 2]
  puts a, b, p
end

myMethod(25, "hello", true)   # 25, hello, true, 1, 2



def squares (a, b, c)
  return a*a, b*b, c*c
end
arr = squares(2,3,4)
puts arr  # 4, 9, 16

def demo (a, b)
  a = b - 2
  b = a - 3
end
puts demo(5,6)    # 1 (last line always returns without a word Return)

def square(x)
  x*x
end
square(2).times {puts "Hi"}   # Hi, Hi, Hi, Hi



def add(a, b)
  a + b
end

def mult(a, b)
  a*b
end
puts x = mult(add(2,3), add(4,7))   # 55



$x = 42   # - global var
arr = [1,2,3]
arr.each {|x| puts $x}    # 42, 42, 42



def fact(n)
  if n <= 1
    1
  else
    n * fact(n - 1)
  end
end
puts fact(5)    #120

=end  #Block 4
###############################################################################################################
