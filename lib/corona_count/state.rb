class CoronaCount::State

attr_accessor :state, :positive, :recovered, :death

  def initialize(state, positive, recovered, death)
    @state, @positive, @recovered, @death = state, positive, recovered, death
  end
end
