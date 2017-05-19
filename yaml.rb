=begin
# load yaml so we can use it in this program
require 'yaml'

# create an array
test_array = ["Give Quiche a Chance", "Mutants Out", 'Chameleonic Life_forms, No Thanks', 
              45, 831]

# save the array to yaml and save it in test string
test_string = test_array.to_yaml

# create a new txt file
filename = "RimmerTShirst.txt"

# open filename and write test string to it
File.open filename, 'w' do |f|
  f.write test_string
end

# save the reading the filename in read string (new var)
read_string = File.read filename

# DONT KNOW
read_array = YAML::load read_string

# puts them out
puts(read_string == test_string)
puts(read_array == test_array)
=end

# load yaml
require 'yaml'

# open the filename and write to it using the object (after converting it to yaml)
def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

# take a filename, read it and save ot to yaml_string
def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

# create a test array
test_array = ['Slick Shoes', 'Bully Blinders', 'Pinchers of Peril']

# create a filename as a txt file
filename = 'DatasGadgets.txt'

# call yaml save with the testarray as contents and write the contents to filename
yaml_save test_array, filename

# read the new filename and save it in read array
read_array = yaml_load filename

# put it out
puts(read_array == test_array)