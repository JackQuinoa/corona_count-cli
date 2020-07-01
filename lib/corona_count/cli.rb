require "pry"
require "httparty"


class CoronaCount::CLI 
  
  def initialize 
    puts "Hello there, please find and enter the number correlated with the state/territory you'd like to view."  
  end
  
  def call 
    get_states 
    count_by_state
    another_state
  end
  
  def get_states 
    CoronaCount::APIManager.get_states_data.each_with_index do |hash, index| 
      puts "#{index + 1}. #{hash["state"]}"
    end
  end
  
  def count_by_state
    input = gets.strip.to_i
    # case input 
    #   when  "1"
        

    input - 1 
        
        ##input is now equal to the hash's index in the @@all array in state class 
    
        CoronaCount::State.state_count(input)

  end
  
  def another_state 
    puts "Would you like to view another state's corona count? Enter 1 for yes or 2 for no."
    input = gets.strip
    case input 
      when "1"
       call 
      when "2"
        puts "Goodbye and stay safe!"
    end
  end
  
end 