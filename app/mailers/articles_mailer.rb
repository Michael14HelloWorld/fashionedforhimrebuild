class ArticlesMailer < ApplicationMailer
    default from: 'bgmichael1400@gmail.com'

    def article_notification(user, article)
        @user = user
        @article = article
        mail(to: @user.try(:email), subject: 'New Blog Article!')
    end
end
