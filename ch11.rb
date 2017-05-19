=begin
# The filename doesnt have to end
# with ".txt", but since it is valid
# text, why not?
filename = "ListerQuote.txt"
test_string = "I promise that I swear absolutely that " +
              "I will never mention gazpacho soup again."

# The 'w' here is for write-access to the file
# since we are trying to write to it.
File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)


puts Dir['AnnaNicole.jpg']
=end

# This is where she stores her picutres before
# she gets her YAML on and moves them to the server.
# Just for my own conveneince. Ill go there now.
Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

# First we find all of the pictures to be moved.
pic_names = Dir['F:/**/*.{JPG.jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print 'Downloading' + pic_names.length.to_s + ' files: '

# This will be our counter. We`ll start at 1 today,
# though normally I like to count from 0

pic_number = 1

pic_names.each do |name|
  print '.' # This is our progress bar.

  # put in a 0 for every ten pics??
  new_name = if pic_number < 10
    batch_name + '0' + pic_number.to_s + '.jpg'
  else
    # else put the batch name and the picnumber + a jpg at the end. 
    batch_name + pic_number.to_s + '.jpg'
  end

  # moves or 'renames' the files into her current folder and deleting the old ones
  File.rename name, new_name

  # Finally we increment the counter
  pic_number = pic_number + 1
end

puts 
puts 'Done, cutie!'