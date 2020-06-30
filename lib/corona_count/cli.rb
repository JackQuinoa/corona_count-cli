require "pry"
require "httparty"


class CoronaCount::CLI 

  def call 
    puts "Hello there, please find and enter the number correlated with the state you'd like to view."  
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
    input = gets.strip 
    case input 
      when  "1" 
      CoronaCount::State.state_count
    end
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