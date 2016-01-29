class NotificationMailer < ActionMailer::Base
  default from: "no-reply@sonatural.com"

  def comment_added
  	mail(to: "tfpclaudia@gmail.com",
  		subject: "A comment has been added to one of your places!")
  end
end
