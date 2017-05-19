# i need a height attr, 
#after a while the tree shoue die
#method pickanorgane which reduce the number of fruit on the tree


class OrangeTree

  def initialize height
    @height = height
    @oranges = 0
    @age = 0
    puts "You have created a tree which is " + @height + " inches tall."
  end

  def time_passes
    @height = @height.to_i + 5 # tree grows five inches
    @age = @age + 1 # tree gets older one year
    @oranges = @oranges + 5 # 5 oranges grow each year
    puts "One year has passed."
    puts "Your tree is now " + @height.to_s + " inches tall, has " + @oranges.to_s + " oranges on it"
    puts "and is " + @age.to_s + " year old."
  end

  def pick_orange
    @oranges = @oranges - 1
    puts "You have pick an orange."
    puts "There are " + @oranges.to_s + " oranges remaining on the tree."
    passage_of_time
  end

  def passage_of_time
    @age = @age + 10
    @oranges = @oranges + 2
    @height = @height + 5
    if @age > 5
      puts "Trees only live five years..."
      puts "Your tree has died!"
      exit
    end
  end

    
end

tree = OrangeTree.new '10'
tree.time_passes
tree.pick_orange