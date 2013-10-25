class HoodInstallationState
  def next state
    EngineInstallationState.new if valid? state
  end

  def valid? state
    state == :wheels
  end
end
