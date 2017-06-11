class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_pict.subject
  #
  def sendmail_pict(pict)

    @pict = pict
    mail to: "igoqueen5@gmail.com"
        subject: 'Instagram 写真が投稿されました'
  end
end
