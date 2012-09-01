# -*- encoding: utf-8 -*-
require "spec_helper"

describe VendingMachine do
  describe '#total' do
    it '何もしない状態で総計を取得すると0円が返ること' do
      vm = VendingMachine.new
      vm.total.should eq(0)
    end
  end

end
