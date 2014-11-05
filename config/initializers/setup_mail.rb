ActionMailer::Base.delivery_method = :smtp
	ActionMailer::Base.smtp_settings = {
		:address				=>	'smtp.sendgrid.net',
		:port					=>	'587',
		:authentication			=>	:plain,
		:user_name				=>	'app31304539@heroku.com',
		:password				=>	'5xp4uqfc',
		:domain					=>	'heroku.com',
		:enable_starttls_auto	=>	true
	}
