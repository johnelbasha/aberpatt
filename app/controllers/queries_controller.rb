class QueriesController < ApplicationController
  def create
    @query = Query.new(query_params)
    if @query.save
      redirect_to root_path, flash: { notice: 'Your query has been successfully sent to us. An e-mail confirmation has been sent to you.' }
    end
  end

  private

  def query_params
    params.require(:query).permit(:name, :email, :phone, :message) 
  end
  
end
