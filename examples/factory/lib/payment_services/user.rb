class UserPaymentService
  def pay *args
    raise ForbiddenAccessError, "User cannot perform payments"
  end
end
