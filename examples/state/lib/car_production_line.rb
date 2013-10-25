class CarProductionLine
  attr_reader :state
  def initialize
    @state = EngineInstallationState.new
  end

  def move_to! state
    @state = @state.next state
  end
end
