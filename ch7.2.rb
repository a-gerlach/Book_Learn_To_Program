=begin
puts "Hello, what\´s is your name?"
name = gets.chomp
puts "Hello, " + name + "."

if name == "Adrian" || name != "Adrian"
    puts  "What a lovely name!"
        
end

puts "I am  a fortune-teller. Tell me your name:"
name = gets.chomp

if name == "Adrian"
  puts "I see great things in your futire."
else
  puts "Your future is...oh my! Look at the time!"
  puts "I really have to go. Sorry!"
end



puts "Hello, and welcome to seventh grade English."
puts "My name is Mrs. Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
  puts "Please take a seat, " + name + "."
else
  puts name + "? You mean " + name.capitalize + ", right?"
  puts "Don\´t you even know how to spell your name??"
  reply = gets.chomp

  if reply.downcase =="yes"
    puts "Hmmph! Well, sit down!"
  else
    puts "GET OUT!!!"
  end
end


input = ""

while input != "bye"
  puts input
  input = gets.chomp
end

puts "Come again soon"
=end

request = "Compared to Go, Chess is like Tic-Tac-Toe."

while request != "stop"
  puts "What would you like to ask C to do?"
  request = gets.chomp

  puts 'You say, "C, please ' + request + '"'
  puts 
  puts "C\´s response: "
  puts '"C ' + request + '."'
  puts '"Papa ' + request + ', too."'
  puts '"Mama ' + request + ', too."'
  puts
end