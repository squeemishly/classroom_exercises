class StateCapitals
  attr_reader :states, :capitals, :name

  def initialize(name)
    @name = name
    @states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}
    @capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}
  end

  def find_state_capital
    if states.has_key?(name)
      capitals[states[name]]
    else
      "Unknown"
    end
  end
end

new_state = StateCapitals.new("who's your momma?'")
p new_state.find_state_capital