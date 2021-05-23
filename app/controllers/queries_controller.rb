class QueriesController < ApplicationController
  def create
    @query = Query.new(query_params)
    if verify_recaptcha(model: @query) && @query.save
      QueryMailer.thanks(@query).deliver_now
      QueryMailer.notification(@query).deliver_now
      redirect_to root_path, flash: { notice: 'Your query has been successfully sent to us. An e-mail confirmation has been sent to you.' }
    else
      flash[:danger] = "Your query was not sent! Please check the errors below."
      # redirect_to "pages/contact"
      render "pages/contact"
    end
  end

  private

  def query_params
    params.require(:query).permit(:name, :email, :number, :message) 
  end
  
end
