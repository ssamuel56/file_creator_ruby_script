class Person
  def initialtize
    @name = ""
    @age = 0
    @position = ""
  end
  def show_info
    puts @name
    puts @age
    puts @position
  end

  attr_accessor :name
  attr_accessor :age
  attr_accessor :position
end

guy = Person.new


puts "What is your name?"
print '>>'

entry1 = $stdin.gets.chomp
guy.name = entry1



puts "How old are you #{guy.name}?"
print '>>'

entry2 = $stdin.gets.chomp
guy.age = entry2


puts "What is your position at the company?"
print '>>'

entry3 = $stdin.gets.chomp
guy.position = entry3

guy.show_info

puts "." * 10
puts ' ' * 10
puts "Is this correct yes or no?"
print '>>'

loop do
  answer = $stdin.gets.chomp
  if answer == "yes"
    File.new "#{guy.name}.txt", "w+"
    break
  elsif answer == "no"
    '.' * 10
    '.' * 10
    load 'test_1.rb'
  else
    puts "Please answer yes or no"
  end
end

opener = File.open("#{guy.name}.txt", "w+")

opener.write(guy.name)
opener.write("\n")
opener.write(guy.age)
opener.write("\n")
opener.write(guy.position)
opener.write("\n")

puts "This is what our file looks like!"
puts '.' * 10
opener.seek(0)
puts opener.read
puts '.' * 10

opener.close
