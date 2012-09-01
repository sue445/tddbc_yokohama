# -*- encoding: utf-8 -*-

class VendingMachine
  def initialize
    @amount = 0
  end

  def insert(coin)
    @amount += coin
  end

  def total
    @amount
  end

  def pay_back
    result = @amount
    @amount = 0
    result
  end
end
