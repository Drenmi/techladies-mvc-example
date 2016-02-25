# Pretend that this service sends an e-mail notification. :-3
class EmailNotificationService
  def initialize(email)
    @email = email
  end

  def notify!
    true
  end
end
