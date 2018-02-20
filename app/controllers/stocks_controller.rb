class StocksController < ApplicationController
  
  def search
    if params[:stock].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      @stock = Stock.new_from_lookop(params[:stock])
      flash.now[:danger] = "You have entered an incoret symbol" unless @stock
    end
    render partial: 'users/result'
  end
  
end