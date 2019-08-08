class Stock < ApplicationRecord

  def self.new_from_lookup(ticker_symbol)
  begin
  StockQuote::Stock.new(api_key: 'pk_5d0564f15d234ae981b6ed2e6a66cf00')
  looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
  new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
  rescue => exception
  return nil
  end
  
  end
  end
