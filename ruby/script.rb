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

# Regular expressions
puts "What do you like most about women?"
line = gets 
if line =~ /tits|ass/ 
  puts "You're just like every other man"
else
  puts "Wow -- that's totally unique"
end

# Blocks and yeild
def cattle_call
  puts "Bitches holla"
  yield
  yield
  puts "yeah that's right"
end
cattle_call { puts "We love you Chris you're so sexy" }

# Using blocks and iterators
sluts = %w( black white yellow )
sluts.each {|sluts| puts "Man I really love #{sluts} bitches"}

