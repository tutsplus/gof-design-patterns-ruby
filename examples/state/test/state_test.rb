require 'test_helper'
require 'car_production_line'
require 'engine_installation_state'
require 'hood_installation_state'
require 'wheels_installation_state'
require 'exceptions/illegal_jump'

describe CarProductionLine do
  let(:production_line) { CarProductionLine.new }

  it "starts with the engine" do
    production_line.state.class.must_equal EngineInstallationState
  end

  it "installs the hood after the engine" do
    production_line.move_to! :hood
    production_line.state.class.must_equal HoodInstallationState
  end

  it "can't jump to the wheels right after the engine" do
    -> { production_line.move_to! :wheels }.must_raise IllegalStateJumpError
  end
end
