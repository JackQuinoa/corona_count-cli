require "pry"
require "httparty"



class CoronaCount::CLI 

  
  # def initialize
  #   call 
  #   binding.pry 
  # end
  
  def call 
    puts "Hello there, please find and enter the number correlated with the state you'd like to view."  
    get_states 
    count_by_state
    another_state
  end
  
  def get_states 
    number = 1
    CoronaCount::APIManager.get_states_data.each do |hash| 
      puts "#{number}. #{hash["state"]}"
      number += 1 
      end
      
  end
  
  def count_by_state
    input = gets.strip 
    case input 
      when "1"
        puts "cases for 1"
    end
  end
  
  def another_state 
    puts "Would you like to view another state's corona count? Enter 1 for yes or 2 for no."
    input = gets.strip
    case input 
      when "1"
        states 
        count_by_state
        another_state
      when "2"
        puts "Goodbye and stay safe!"
      end
  end
  
end 