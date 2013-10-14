require 'test_helper'
require 'payment_service'
require 'manager'
require 'user'
require 'exceptions/forbidden_access'

describe PaymentServiceFactory do
  let(:user) { User.new "John Doe" }
  let(:manager) { Manager.new "The Boss" }

  it "allows a manager to perform payments" do
    service = PaymentServiceFactory.for manager
    service.pay user, 500

    # no assertion, just test it doesn't throw an error
  end

  it "forbids a regular user to perform payments" do
    service = PaymentServiceFactory.for user
    -> { service.pay manager, 500 }.must_raise ForbiddenAccessError
  end
end
