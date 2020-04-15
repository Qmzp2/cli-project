
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
  end
  
  def return_klasses
    puts "The classes that you have to choose from as of this version are:"
    
  end
  

    
end
