class Mailer < ApplicationMailer
  default from: "bgmichael1400@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.try(:email), subject: 'New Blog Post!')
  end
end
