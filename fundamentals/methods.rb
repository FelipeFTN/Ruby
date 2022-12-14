# Methods

# Prints your name

def hello(name)
  puts "Hello there #{ name }"
end

hello("Felipe")

def new_hello(first_name, last_name)
  return "Hello there #{ first_name } #{ last_name }"
end

puts new_hello("Felipe", "Tenorio")
