
class Cli
  
  def run 
    puts " "
    puts "Greetings aspiring adventurer! Are you ready to begin your journey?" 
    puts "First we must choose the class that will dictate your skills and abilities!"
    puts " "
    print "Press " + "Enter".colorize(:blue) +" to begin!"
    stop = gets #Just to wait to hit enter
    Api.get_classy
    print_classes(Classes.all)
    prompt
  end

  def print_classes(klasses) 
    puts "The following classes for this version are:"
    klasses.each.with_index(1) do |klass, index|
      puts "#{index}. #{klass.name}"
    end
    puts "Please enter in the name of the class you would like to select"
    class_selection = gets.strip.downcase
    Classes.all.each do |klass|
      if klass.class_id == class_selection
    Api.add_class_details(class_selection)
  end
end
end
  
 def prompt
    puts "Enter a class you would like to see."
    input = gets.strip.downcase
    if
      input == "exit"
      farewell
    elsif
    Classes.all.any? { |value| value.class_id == input}
    Api.add_class_details(input)
  else
    puts "sorry that didn't work, ending"
    #prompt
  end
end

def farewell
  puts "Good luck, have fun!"
  exit
end
  

    
end
