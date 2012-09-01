# -*- encoding: utf-8 -*-
require "spec_helper"

describe VendingMachine do
  let(:vm){ VendingMachine.new }

  # TODO subject でリファクタリングする

  describe '#total' do
    subject { vm.total }

    context '何もしない状態' do
      it { should == 0 }
    end

    context '10円玉を入れた時' do
      before do
        vm.insert(10)
      end

      it {should == 10 }
    end

    context '50円玉と100円玉を入れた時' do
      before do
        vm.insert(50)
        vm.insert(100)
      end

      it { should == 150 }
    end
  end

  describe '#pay_back' do
    it '何もしない状態だと0円が返ること' do
      vm.pay_back.should == 0
    end

    it '10円玉を入れた状態だと10円が返ること' do
      vm.insert(10)
      vm.pay_back.should == 10
    end
  end

end
