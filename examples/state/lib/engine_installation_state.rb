class EngineInstallationState
  def next state
    if valid?(state)
      HoodInstallationState.new
    else
      raise IllegalStateJumpError
    end
  end

  def valid? state
    state == :hood
  end
end
