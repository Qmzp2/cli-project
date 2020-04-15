
class Cli
  
  def run #Oh boy, here we go! gl hf!
    puts " "
    puts "Greetings aspiring adventurer! Are you ready to begin your journey?" 
    puts "First we must choose the class that will dictate your skills and abilities!"
    puts " "
    puts "Press 'Enter' to begin!"
    stop = gets #Just to wait to hit enter
    #@class_selection = gets.strip.downcase       #gets what the user inputs and saves it to the instance local_variables
    Api.get_classy #make sure this is a valid input
    print_classes(Classes.all)
    
  end
  
  def return_klasses
    puts "The classes that you have to choose from as of this version are:"
    
  end
  
  def print_classes(klasses)
    puts "The following classes for this version are:"
    klasses.each.with_index(1) do |klass, index|
      puts "#{index}. #{klass.name}"
    end
    puts "Please enter in the name of the class you would like to select"
    @class_selection = gets.strip.downcase
    Api.class_selection(@class_selection)
  end
  

    
end
