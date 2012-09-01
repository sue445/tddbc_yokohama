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
    @amounts.select {|money|
      ACCEPT_COINS.include? money
    }.inject(0) do |sum, money|
      sum += money
    end
  end

  def pay_back
    result = @amounts.inject(0) do |sum, money|
      sum += money
    end

    @amounts = []
    result
  end

  private
  ACCEPT_COINS = [10, 50, 100, 500, 1000]
end
