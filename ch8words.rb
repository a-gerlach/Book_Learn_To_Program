input = ""
words = []

while words.length != 5
  puts "Enter a word"
  word = gets.chomp
  words.push(word)
  break if word == ""
end

words.sort!
puts words.join(" and ")
