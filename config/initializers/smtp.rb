ActionMailer::Base.smtp_settings = {
  address: "smtp.fastmail.com",
  port: 587,
  domain: 'fastmail.com',
  user_name: ENV['FASTMAIL_ADDRESS'],
  password: ENV['FASTMAIL_APP_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}