# -*- encoding: utf-8 -*-
require "spec_helper"

describe VendingMachine do
  describe '#total' do
    let(:vm){ VendingMachine.new }

    it '何もしない状態で総計を取得すると0円が返ること' do
      vm.total.should == 0
    end

    it '10円玉を入れた時に10円が返ること' do
      vm.insert(10)
      vm.total.should == 10
    end

    it '50円玉と100円玉を入れた時に150円が返ること' do
      vm.insert(50)
      vm.insert(100)
      vm.total.should == 150
    end
  end

end