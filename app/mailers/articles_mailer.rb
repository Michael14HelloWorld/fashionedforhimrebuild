class ArticlesMailer < ApplicationMailer
    default from: 'bgmichael1400@gmail.com'

    def comment_notification
        mail(to: @user.try(:email), subject: 'New Blog Post!')
    end
end
