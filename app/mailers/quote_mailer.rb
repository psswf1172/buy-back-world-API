class QuoteMailer < ApplicationMailer
	default from: 'buybackers@gmail.com'

	def new_quote(quote)
		@quote = quote
		mail(to: AdminUser.last.email,
			subject: 'Quote Waiting',
			bcc: [AdminUser.last.text_mail, AdminUser.first.email])
	end

end
