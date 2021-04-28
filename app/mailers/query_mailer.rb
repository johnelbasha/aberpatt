class QueryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.query_mailer.thanks.subject
  #
  def thanks(query)
    @query = query
    mail to: @query.email, subject: "We're dealing with your query"
  end
end
