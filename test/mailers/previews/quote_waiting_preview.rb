class QuoteMailerPreview < ActionMailer::Preview
  
  def new_quote
  	quote = Quote.last
    QuoteMailer.new_quote(quote)
  end

end

# Then the preview will be available in http://localhost:3000/rails/mailers/quote_mailer/new_quote.