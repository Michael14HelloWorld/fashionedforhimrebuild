class ArticlesMailer < ApplicationMailer
    default from: 'bgmichael1400@gmail.com'

    def article_notification(article)
        @article = article
        mail(to: 'bgmichael1400@gmail.com', subject: 'New Blog Article!')
    end
end
