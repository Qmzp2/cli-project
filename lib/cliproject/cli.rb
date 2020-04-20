
class Cli
  
  def run #Oh boy, here we go! gl hf!
    puts " "
    puts "Greetings aspiring adventurer! Are you ready to begin your journey?" 
    puts "First we must choose the class that will dictate your skills and abilities!"
    puts " "
    puts "Press 'Enter' to begin!"
    stop = gets #Just to wait to hit enter
    Api.get_classy #makes the objects of each klass
    print_classes(Classes.all) #45.25 change later
  end

  def print_classes(klasses) #this is pulling from Classes, but how? Line 12 argument
    puts "The following classes for this version are:"
    klasses.each.with_index(1) do |klass, index|
      puts "#{index}. #{klass.name}"
    end
    puts "Please enter in the name of the class you would like to select"
    @class_selection = gets.strip.downcase #work in way to verify input
    Api.add_class_details(@class_selection)
  end
  
  def prompt(input)
    puts "What class would you like to see next?"
    Api.add_class_details(input)
  end
  

    
end
