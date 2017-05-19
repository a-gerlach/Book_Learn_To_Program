input = "d"
puts "Grandmother: WHAT DID YOU SAY???"

while input != input.upcase 
  
  print "You: I said: "

  input = gets.chomp
  
  break if input == "BYE"
  puts "YOU NEED TO SPEAK UP BOY!!!"
end