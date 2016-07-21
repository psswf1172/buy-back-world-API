class QuotesMailer < ApplicationMailer
	default from: 'notifications@buybackworld.com'

	def quote_waiting(quote)
		@quote = quote
		mail(to: AdminUser.first.email, subject: 'Quote Waiting',
			bcc: ["jennifermabella@gmail.com"])
	end

end
