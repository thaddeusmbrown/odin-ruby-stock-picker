require 'spec_helper'
require_relative '../lib/stock_picker'

RSpec.describe 'Stock Picker Project' do
  describe 'chooses best days to buy and sell' do
    it 'when highest and lowest days are in middle' do
      daily_stock_price = [17,3,6,9,15,8,6,1,10]
      result = [1,4]
      expect(stock_picker(daily_stock_price)).to eq(result)
    end

    it 'when highest day is last and lowest is in middle' do
      daily_stock_price = [17,3,6,9,10,8,6,1,15]
      result = [1,8]
      expect(stock_picker(daily_stock_price)).to eq(result)
    end

    xit 'when highest day is in middle and lowest is first' do
      daily_stock_price = [3,17,6,9,15,8,6,1,10]
      result = [0,1]
      expect(stock_picker(daily_stock_price)).to eq(result)
    end

    xit 'when highest day is last and lowest is first' do
      daily_stock_price = [3,10,6,9,15,8,6,1,17]
      result = [0,8]
      expect(stock_picker(daily_stock_price)).to eq(result)
    end
  end
end