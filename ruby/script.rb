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
