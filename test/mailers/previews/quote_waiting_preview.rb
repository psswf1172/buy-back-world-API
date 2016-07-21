class QuoteMailerPreview < ActionMailer::Preview
  
  def quote_waiting
    QuoteMailer.quote_waiting(Quote.first)
  end

end

# Then the preview will be available in http://localhost:3000/rails/mailers/quote_mailer/quote_waiting.