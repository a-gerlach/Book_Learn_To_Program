=begin 
class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'forty-two'
    end

    english
  end
end

puts 5.to_eng
puts 42.to_eng

class Die

  def roll
    1 + rand(6)
  end

end

# Lets make a couple of dice
dice = [Die.new, Die.new]

# ... and roll them
dice.each do |die|
  puts die.roll
end
=end

class Die

  def initialize
    # I`ll just role the die, though we could do something else
    # if we wanted to, such as setting the die to have 6 showing
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

end

puts Die.new.showing # create a new die, role it (via initialize) and show the number

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # Hes full
    @stuff_in_intestine = 0 # He doesnt need to go

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts 'You walk' + @name + '.'
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts ' You toss' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  def hungry?
    # Method names can end with "?".
    # Usually you do this only if the method
    #  returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0 # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving! In despeartion, he ate YOU!'
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts 'Whoops! ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed