
class Cli
  
  def run 
    puts " "
    puts "Greetings aspiring adventurer! Are you ready to begin your journey?" 
    puts "First we must choose the class that will dictate your skills and abilities!"
    puts " "
    print "Press " + "Enter".colorize(:blue) +" to begin!"
    stop = gets
    Api.get_classy
    print_classes(Classes.all)
  end

  def print_classes(klasses) 
    puts "The following classes for this version are:"
    klasses.each.with_index(1) do |klass, index|
      puts "#{index}. #{klass.name.colorize(:red)}"
    end
    prompt
end

def farewell
  puts "Good luck, have fun!".colorize(:yellow)
  exit
end

def prompt
  puts "Enter a class you would like to see or type" + " exit".colorize(:blue) + " to exit or " + "list".colorize(:blue)
  puts "to show the list of classes again."
  input = gets.strip.downcase
  if Classes.all.find { |value| value.class_id == input}
    Api.add_class_details(input)
    prompt
  else
  case input
  when 'exit'
    farewell
    when 'list'
      print_classes(Classes.all)
    else
    puts "Sorry that input didn't work."
    prompt
  end
end
end
end
