class UserMailerPreview < ActionMailer::Preview
  
  def seller_waiting
    UserMailer.seller_waiting(User.first)
  end

end

# Then the preview will be available in http://localhost:3000/rails/mailers/user_mailer/seller_waiting.