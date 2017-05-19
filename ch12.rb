=begin
alpha = Array.new + [12345]
beta = String.new + 'hello'
karma = Time.new

puts 'alpha = ' + alpha.to_s
puts 'beta = ' +  beta.to_s
puts 'karma = ' + karma.to_s


time = Time.new # The moment we ran this code
time2 = time + 60 # One minute later

puts time
puts time2


puts Time.mktime(2000, 1, 1) # Y2K


my_bday = Time.mktime(1989, 6, 26, 18, 00)  # When I was born

my_bday2 = my_bday + 1000000000

puts my_bday2


dict_array = [] # array literal; same as Array.new
dict_hash = {} # hash literal; same as Hash.new

# create an array 
dict_array[0] = 'candle'
dict_array[1] = 'glasses'
dict_array[2] = 'truck'
dict_array[3] = 'Alicia'

# create a hash
dict_hash['shia-a'] = 'candle'
dict_hash['shaya'] = 'glasses'
dict_hash['shasha'] = 'truck'
dict_hash['sh-sha'] = 'Alicia'

# use the each method to output the word
dict_array.each do |word|
  puts word
end

# use the each method to output the key (c_word) and the actual word
dict_hash.each do |c_word, word|
  puts c_word + ': ' + word
end

# create a weird hash and output it
weird_hash = Hash.new
weird_hash[12] = 'monkeys'
weird_hash[[]] = 'emptiness'
weird_hash[Time.new] = "no time like the present"
puts weird_hash
=

# This is your range literal
letters = 'a'..'c'

# Convert range to array / check if the first part equals the last part
puts(['a', 'b', 'c'] == letters.to_a)

# iterate over a range
('A'..'Z').each do |letter|
  print letter
end
puts

# do some true / false tests
god_bless_the_70s = 1970...1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max 
puts(god_bless_the_70s.include?(1979 ))
puts(god_bless_the_70s.include?(1980 ))
puts(god_bless_the_70s.include?(1974.5))


da_man = 'Mr. T'
big_T = da_man[4]
puts big_T

puts ?T
puts 84.chr 

puts "Hello. My name is Julian"
puts "I\`m extremely perceptive."
puts "Whats your name?"

name = gets.chomp

puts "Hi, " + name +'.'

if name[0] == ?C 
  puts "You have an excellet taste in footwear."
  puts "I can just tell"
end
=end

proof = 'We tore the universe a new space-hole, alright!'
puts proof[12, 8]
puts proof[12..20]

puts

def is_avi? filename
  filename.downcase[-4..-1] == '.avi'
end

# Vicarious embarassment
puts is_avi? 'DANCEMONKEYBOY.AVI'

# Hey, i wasnt even 2 at the time...
puts is_avi?('toilet_paper_fisco.jpg')

puts(42.class)
puts('I\`ll have some on mine!'.class)
puts(Time.new.class)
puts(Time.class)
puts(String.class)
puts(Class.class)