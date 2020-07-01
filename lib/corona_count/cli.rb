require "pry"
require "httparty"


class CoronaCount::CLI 
  
  def initialize 
    puts "Hello there, please find and enter the number correlated with the state/territory you'd like to view."  
      sleep 4 
  end
  
  def call 
    get_states 
    count_by_state
    another_state
  end
  
  def get_states 
    CoronaCount::APIManager.get_states_data if CoronaCount::State.all.empty?
    CoronaCount::State.all.each_with_index do |state, index| 
      puts "#{index + 1}. #{state.state}"
    end
  end
  
  def count_by_state
    input = gets.strip.to_i - 1 
    if input.between?(1,56)
      response =  CoronaCount::State.state_count(input)
      puts response 
    else 
      puts "That number isn't correlated to a state/territory, please choose a valid number."
      count_by_state
    end
  end
  
  def another_state 
    puts "Would you like to view another state/territory's corona count? Enter 1 for Yes or 2 for No."
    input = gets.strip
    case input 
      when "1"
       call 
      when "2"
        puts "Goodbye and stay safe!"
    end
  end
  
end 