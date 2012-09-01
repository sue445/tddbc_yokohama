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

  alias :pay_back :total
end
