# Pretend that this service sends an SMS notification. :-3
class SmsNotificationService
  def initialize(phone_number)
    @phone_number = phone_number
  end

  def notify!
    true
  end
end
