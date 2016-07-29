class QuoteMailer < ApplicationMailer
	default from: 'notifications@buybackers.com'

	def new_quote(quote)
		@quote = quote
		mail(to: AdminUser.first.email, 
			subject: 'Quote Waiting',
			bcc: ["psswf1172@yahoo.com"])
	end

end
