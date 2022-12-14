# Loops

## While loop
num = 1

while num < 10
  puts "I love Ruby!"
  num += 1
end

## Each loop

(1..5).each do |num|
  puts num
end

names = ["John", "Tim", "Mary"]

names.each do |name|
  puts name
end
