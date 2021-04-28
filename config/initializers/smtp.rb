ActionMailer::Base.smtp_settings = {
  address: "smtp.fastmail.com",
  port: 587,
  domain: 'fastmail.com',
  user_name: 'sales@gilfonce.com', # ENV['GMAIL_ADDRESS'],
  password: 'u9w7tzvsht2y8r7d', # ENV['GMAIL_APP_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}

# u9w7tzvsht2y8r7d