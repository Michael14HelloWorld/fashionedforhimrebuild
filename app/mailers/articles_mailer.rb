class ArticlesMailer < ApplicationMailer
    default from: 'bgmichael1400@gmail.com'

    def articles_notification(article)
        @article = article
        for user in User.all
            mail to: user.try[:email] , subject: 'New Blog Post!'
        end
    end
    def new_user_notification(user)
        @user = user
        mail to: user.try[:email] , subject: 'Thanks for Subscribing!' 
    end
end
