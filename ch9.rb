=begin
puts "Hello and thank you for taking the time to"
puts "help me with thsi experiment. My experiment"
puts "has to do with the way people feel about"
puts "Mexican food. Just think abou Mexican food"
puts "and try to anser every question honestly,"
puts "with either a 'yes' or a 'no'. My experiment"
puts "has nothing to do wth bed-wetting"
puts

good_answer = false
while (!good_answer)
  puts "Do you like eating tacos?"
  answer = gets.chomp.downcase
  if (answer == "yes" || answer == "no")
    good_answer = true
  else
    puts "Please answer 'yes' or 'no'"
  end
end

good_answer = false
while (!good_answer)
  puts "Do you like eating burritos?"
  answer = gets.chomp.downcase
  if (answer == "yes" || answer == "no")
    good_answer = true
  else
    puts "Please answer yes or no"
  end
end

good_answer = false
while (!good_answer)
  puts "Do you wet the bed?"
  answer = gets.chomp.downcase
  if (answer == "yes" || answer == "no")
    good_answer = true
    if answer == "yes"
      wets_bed = true
    else
      wets_bed = false
    end
  else
    puts "Please answer Yes or no"
  end
end

good_answer = false
while (!good_answer)
  puts "Do you like eating chmichangas"
  anser = gets.chomp.downcase
  if (answer == "yes" || answer == "no")
    good_answer = true
  else
    puts "Please answe yes or no"
  end
end

puts "Just a few more questions"

good_answer = false
while (!good_answer)
  puts "Do you like eating sopapillas?"
  answer = gets.chomp.downcase
  if (answer == "yes" || answer == "no")
    good_answer = true
  else
    puts "Please answer yes or no"
  end
end

puts
puts "Debriefing"
puts "Thank you for taking the time to help with"
puts "this experiement. In fact, this experiment"
puts "has nothing to do with mexican food. It is"
puts "an experiment about bed-wetting. The mexican"
puts "food was just ther to catch you off guard"
puts "in the hopes that you would anser more"
puts "honestly. Thanks again"
puts 
puts wets_bed






def double_this num 
  num_times_2 = num * 2
  puts num.to_s + " doubled is " + num_times_2.to_s
end

double_this 44


def little_pest tough_var
  puts tough_var
  #puts "HAHA! I ruined your variable"
end

tough_var = "You cant even touch my variable!"
little_pest "The variable in the method"
puts tough_var


return_val = "This puts returned: "
puts return_val

def say_moo number_of_moos
  puts "moooooooo" * number_of_moos
  "yellow submarine"
end

x = say_moo 3
puts x.capitalize + ", dude..."
puts x


def favorite_food name
  if name == "Lister"
    return "vindaloo"
  end

  if name == "Rimmer"
    return "mashed potatoes"
  end

  "hard to say...maybe fried plantain"
end

def favorite_drink name
  if name == "Jean-Luc"
    "tea, Early Grey, hot"
  elsif name == "Kathryn"
    "coffee, black"
  else 
    "perhaps...horchata"
  end
end

puts favorite_food("Rimmer")
puts favorite_food("Lister")
puts favorite_food("Cher")
puts favorite_drink("Kathryn")
puts favorite_drink("Oprah")
puts favorite_drink("Jean-Luc")
=end

def ask question
  good_answer = false
  while (!good_answer)
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      good_answer = true
      if reply == "yes"
        answer = true
      else
        answer = false
      end
    else 
      puts "Please answer yes or no."
    end
  end

  answer
end

puts "Hello and thank you for ...."
puts
ask "Do you like eating tacos?"
ask "Do you like eating burritos?"
wets_bed = ask "Do you wet the bed"
ask "Do you like eating chmichangas?"
ask "Do you like eating sopapillas?"
puts "Just a few more questions..."
ask "Do you like drinking horhcata?"
ask "Do you like eating flautas?"

puts 
puts "Debriefung:"
puts "Thank you for..."
puts 
puts wets_bed