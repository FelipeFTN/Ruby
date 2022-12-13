# User Input

puts "Enter your name: "
# Chomp removes \n from the input
name = gets.chomp() 

puts "Enter your age: "
age = gets.chomp()

# You also can use , instead of +
puts("Hello " + name + ", you are " + age)

puts "Enter your name: "
name = gets.chomp()

puts "Hello #{name},!"
