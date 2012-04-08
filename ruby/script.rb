#! /usr/bin/env ruby
#
# Hello world script
puts "Hello world"

# Arrays 
a = [ 12, 4, 5, 11 ]
puts a[0, 2]

# Create a method
def talk(name)
  result = "My name is " + name 
  return result
end
puts talk("Chris")

# Expression interpolation
def talk_inter(name)
  result = "My name is #{name} and 3 + 3 is #{3 + 3}"
  return result
end
puts talk_inter('Chris')

# Create an array of words
a = %w{ this is an array of words}
puts a[0]
puts a

# Hashes
hash_example = {
  'dog' => 'barks',
  'cat' => 'meows'
}
puts hash_example['dog']

# control statement and read from std in
puts "Enter a number man"
line = gets.to_i
i = 0 
while i < 10 
  line += 1
  puts line
  i += 1
end

