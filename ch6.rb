puts self

var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "Can you pronounce this sentence backwards?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts "What is you full name?"
name = gets.chomp.to_s
puts "Did you know there are " + name.length.to_s + " characters"
puts "in your name,  " + name + "?"

letters ="aAbBcCdDeE"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts "a".capitalize
puts letters

line_width = 80
puts ("Old mother Hubbards".center(line_width))
puts ("Sat in her cupboard".center(line_width))
puts ("Eating her curds and whey".center(line_width))
puts ("When along came a spider".center(line_width))
puts ("Who sat down beside her".center(line_width))
puts ("And scared her poor shoe dog away".center(line_width))

line_width = 40
str = "--> text <--"
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width) + str.rjust(line_width))