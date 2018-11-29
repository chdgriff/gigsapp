class ApplicationMailer < ActionMailer::Base
  default from: 'postmaster@sandbox061518a02592439db918bdd969ec4f2f.mailgun.org'
  layout 'mailer'
  @user = @post.user_id 
  mail(to: @user.email, subject: 'you were accepted for the job')
end
