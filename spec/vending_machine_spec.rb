# -*- encoding: utf-8 -*-
require "spec_helper"

describe VendingMachine do
  describe '#total' do
    it '何もしない状態で総計を取得すると0円が返ること' do
      vm = VendingMachine.new
      vm.total.should eq(0)
    end

    it '10円玉を入れた時に10円が返ること' do
      vm = VendingMachine.new
      vm.insert(10)
      vm.total.should == 10
    end
  end

end
