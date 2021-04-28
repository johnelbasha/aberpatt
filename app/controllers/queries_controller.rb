class QueriesController < ApplicationController
  def create
    @query = Query.new(query_params)
    if @query.save
      redirect_to root_path
    end
  end

  private

  def query_params
    params.require(:query).permit(:name, :email, :phone, :message) 
  end
  
end
