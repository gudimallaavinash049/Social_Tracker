class StocksController < ApplicationController
  
    def search
      if params[:stock].present?
        @stock = Stock.new_from_lookup(params[:stock])
        render 'users/my_portfolio'
      else
         flash[:danger]="please enter valied symbol"  
         redirect_to root_path
      end
    end
  end