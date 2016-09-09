class QuoteMailer < ApplicationMailer
	default from: 'buybackers@gmail.com'

	def new_quote(quote)
		@quote = quote
		mail(to: AdminUser.first.email,
			subject: 'Quote Waiting',
			bcc: ["ethansteiner@gmail.com"])
	end

end
