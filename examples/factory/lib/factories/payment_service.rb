require 'payment_services/manager'
require 'payment_services/user'

class PaymentServiceFactory
  def self.for user
    if user.is_a? User
      return UserPaymentService.new
    elsif user.is_a? Manager
      return ManagerPaymentService.new
    end
  end
end
