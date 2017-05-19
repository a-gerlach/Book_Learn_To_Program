=begin
def ask_recursively question
  puts question
  reply = gets.chomp.downcase

  if reply == "yes"
    true
  elsif reply == "no"
    false
  else
    puts "Please answer 'yes' or 'no'."
    ask_recursively question
  end
end

ask_recursively "Do you wet the bed?"
=end


def factorial num
  if num < 0
    return "You can\´t take the factorial of a negative number!"
  end

  if num <= 1
    1
  else
    num * factorial(num-2)
  end
end



puts factorial(3)
puts factorial(30)