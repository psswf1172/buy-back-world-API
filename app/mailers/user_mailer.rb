class UserMailer < ApplicationMailer
	default from: 'notifications@buybackworld.com'

	def seller_waiting(user, admin=1)
		@admin = admin
		@user = user
		@url = 'http://buybackworld.com/'
		mail(to: @user.email, subject: "You have a seller waiting")
	end

end
