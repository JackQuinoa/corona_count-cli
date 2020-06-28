require "pry"
require "httparty"

class CoronaCount::CLI 

Attributes = HTTParty.get("https://covidtracking.com/api/v1/states/current.json")
attr_accessor :state, :positive, :recovered, :death
  
# attributes = HTTParty.get("https://covidtracking.com/api/v1/states/current.json")
# binding.pry
# def get_data 
    
#   end
# c = Car.new()
# params.each do |key, value|
#   c.send("#{key}=", value)
  

# attributes = HTTParty.get("https://covidtracking.com/api/v1/states/current.json")
#     binding.pry 
#     attributes.each {|key, value| self.send if 
#       key == state || key == positive || key == recovered || key == death then 
#       ("#{key}=", value)}
#     else nil 
#     end
  
  def initialize
    call 
  end
  
  def call 
    puts "Hello there, please find and enter the number correlated with the state you'd like to view."  
    states 
    count_by_state
    another_state
  end
  
  def states 
    puts "NJ, PA"
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