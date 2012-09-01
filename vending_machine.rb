# -*- encoding: utf-8 -*-

class VendingMachine
  def initialize
    # 投入金額
    @amounts = []
  end

  def insert(coin)
    @amounts << coin
  end

  def total
    @amounts.inject(0) do |sum, money|
      sum += money
    end
  end

  def pay_back
    result = total
    @amounts = []
    result
  end
end
