
class Cli
  
  def run #Oh boy, here we go! gl hf!
    puts " "
    puts "Greetings aspiring adventurer! Are you ready to begin your journey?" 
    puts "First we must choose the class that will dictate your skills and abilities!"
    puts " "
    puts "Here are your options: Barbarian, Bard, Cleric, Druid, Fighter, Monk, Paladin,"
    puts "Ranger, Rogue, Sorcerer, Warlock, and Wizard! "
    @class_selection = gets.strip.downcase       #gets what the user inputs and saves it to the instance local_variables
    Api.get_classy(@class_selection) #make sure this is a valid input
  end
end
