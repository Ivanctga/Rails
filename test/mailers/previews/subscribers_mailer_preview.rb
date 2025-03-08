# Preview all emails at http://localhost:3000/rails/mailers/subscribers_mailer
class SubscribersMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/subscribers_mailer/new_post
  def new_post
    SubscribersMailer.new_post
  end
end
