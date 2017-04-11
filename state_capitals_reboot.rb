class StateCapitals

  def initialize
    @states = {"Oregon" => "OR",
              "Alabama" => "AL",
              "New Jersey" => "NJ",
              "Colorado" => "CO"}

    @capitals = {"OR" => "Salem",
                "AL" => "Montgomery",
                "NJ" => "Trenton",
                "CO" => "Denver"}
  end

  def find_a_capital
    puts "gimme a state"
    state = gets.chomp
    city = @capitals[@states[state]]

    puts "the capital of #{state} is #{city}"
  end

  def find_a_state
    puts "gimme a capital"
    city = gets.chomp
    state = @states.key(@capitals.key(city))

    puts "the state #{city} is in is #{state}"
  end

  def list_em_all
    @states.each do |state, abbreviation|
      city = @capitals[abbreviation]
      puts "The abbreviation of #{state} is #{abbreviation} and the capital is #{city}."
    end
  end

end

# StateCapitals.new.find_a_capital
# StateCapitals.new.find_a_state
StateCapitals.new.list_em_all
