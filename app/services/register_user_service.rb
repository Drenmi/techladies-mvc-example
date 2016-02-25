class RegisterUserService
  def initialize(params)
    @params = params
  end

  def register
    if create_user && notify_user
      @user
    else
      false
    end
  end

  private

  def create_user
    @user = User.create(@params)
  end

  def notify_user
    EmailNotificationService.new(@user.email).notify!
  end
end
