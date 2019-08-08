class StocksController < ApplicationController
  
    def search
      if params[:stock].present?
        @stock = Stock.new_from_lookup(params[:stock])
        if @stock
          render 'users/my_portfolio'
        else
          flash[:danger]="you have enter incorrect symbol" 
          redirect_to root_path
        end
      else
         flash[:danger]="please enter symbol"  
         redirect_to root_path
      end
    end
  end