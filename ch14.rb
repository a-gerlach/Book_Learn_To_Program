=begin
toast = Proc.new do 
  puts 'Cheers'
end

toast.call
toast.call
toast.call

do_you_like = Proc.new do |good_stuff|
  puts "I really like " + good_stuff
end

do_you_like.call 'chocolate'
do_you_like.call 'The UFC'


 # define the function and add some_proc as an argument to pass in
def do_self_impotantly some_proc
  puts 'Everybody just HOLD ON! I\'m doing something...'
  some_proc.call # pass in some proc and call it
  puts 'OK everyone. Im done. As you were.'
end

# first proc
say_hello = Proc.new do 
  puts 'hello'
end

# second proc
say_goodbye = Proc.new do 
  puts 'goodbye'
end

# call the method and pass in two procs
do_self_impotantly say_hello
do_self_impotantly say_goodbye



def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

wink = Proc.new do 
  puts '<wink>'
end

glance = Proc.new do 
  puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance


# a mthod which take two inputs
def do_until_false first_input, some_proc
  input = first_input
  output = first_input
  while output # while ouput is true, set them equal and run this function
    input = output
    output = some_proc.call input # here we can the array function with 5 as input

    # output is then asiigned the some_proc call 
    # that we can pass in and the input as an argument
  end

  input # return the input
end

build_array_of_squares = Proc.new do |array| 
  last_number = array.last # last number is the last number in the array
  if last_number <= 0 # stop when we dont have any number left in the array
    false 
  else
    # Take off the last number...
    array.pop
    # ...and replace it with its square
    array.push last_number*last_number
    # ...followed by the next smaller number
    array.push last_number-1
  end
end

always_false = Proc.new do |just_ignore_me|
  false 
end

# the first_input is five and build array is the Proc we pass in.
puts do_until_false([5], build_array_of_squares).inspect

# nothing will happen because you cannot square strings
# nothing happen here beacaue always false returns false and stops the method
# so we simply output the input which is the yum string.
yum = 'lemonade with a hint of orange blossom water'
puts do_until_false(yum, always_false)

# a method with two procs as inputs
def compose proc1, proc2
  Proc.new do |x| # we create a proc with x as input
    proc2.call(proc1.call(x)) # proc2 then calls with output of proc 1 as an argument
  end
end
 # this proc squares a nu,ber (input)
square_it = Proc.new do |x|
  x * x
end

# this Proc doubles the input (number)
double_it = Proc.new do |x|
  x + x
end


double_then_square = compose double_it, square_it
square_then_double = compose square_it, double_it

puts double_then_square.call(5) #we first call double it so 5 + 5 = 10. The we call square 
# it on the 10 which leads to a result of 100
puts square_then_double.call(5) # we first call square it on 5 so 5 * 5 =25
# then we call double it on 25 so 25 + 25 = 50 an output of 50


class Array

  def each_even(&was_a_block_now_a_proc)
    # We start with "true" because
    # arrays start with 0. which is even.
    is_even = true

    self.each do |object|
      if is_even
        was_a_block_now_a_proc.call object
      end

      # Toggle from even to odd, or odd to even
      is_even = !is_even
    end
  end

end

fruits = ['apple', 'bad apple', 'cherry', 'durian']

fruits.each_even do |fruit|
  puts 'Yum! I jst love ' + fruit + ' pies, dont you?'
end

# Remember, we are getting the even-numbered *elements*
#  of the array, which is this case are all odd number,
# because I live only to irritate you.
[1, 2, 3, 4, 5].each_even do |odd_ball|
  puts odd_ball.to_s + ' is NOT an even number'
end
=end

def profile block_description, &block 
  start_time = Time.now 
  block.call 
  duration = Time.now - start_time
  puts block_description + ': ' + duration.to_s + ' seconds.'
end

profile '25000 doublings' do 
  number = 1

  25000.times do 
    number = number + number
  end

  puts number.to_s.length.to_s + ' digits'
  # Thats the number of digist in this HUGE number
end

profile 'count to a million' do 
  number = 0
  1000000.times do 
    number = number + 1
  end
end
