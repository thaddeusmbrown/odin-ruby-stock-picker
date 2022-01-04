require 'pry-byebug'

def stock_picker(daily_price)
  # iterate through hypothetical buys and sells for each combination of days
  # store each combination and its result in a hash

  #binding.pry

  buy_sell_hash = daily_price.each_with_index.reduce(Hash.new(0)) do |result, (buy_price, buy_index)|
   # binding.pry
    for sell_index in (buy_index+1)..(daily_price.length-1)
      result[[buy_index,sell_index]] = daily_price[sell_index] - buy_price
      result
    end
    result
  end
  # binding.pry
  buy_sell_hash.key(buy_sell_hash.values.max)
end