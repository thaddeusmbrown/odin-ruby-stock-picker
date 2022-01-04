# frozen_string_literal: true

def stock_picker(daily_price)
  # iterate through hypothetical buys and sells for each combination of days
  # store each combination and its result in a hash

  buy_sell_hash = daily_price.each_with_index.each_with_object(Hash.new(0)) do |(buy_price, buy_index), result|
    ((buy_index + 1)..(daily_price.length - 1)).each do |sell_index|
      result[[buy_index, sell_index]] = daily_price[sell_index] - buy_price
    end
  end
  buy_sell_hash.key(buy_sell_hash.values.max)
end
