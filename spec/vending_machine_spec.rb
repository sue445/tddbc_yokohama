# -*- encoding: utf-8 -*-
require "spec_helper"

describe VendingMachine do
  let(:vm){ VendingMachine.new }

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
    subject { vm.pay_back }

    context '何もしない状態' do
      it { should == 0 }
    end

    context '10円玉を入れた状態' do
      before do
        vm.insert(10)
      end

      it { should == 10 }

      it "amountが初期化されていること" do
        vm.pay_back
        vm.total.should == 0
      end
    end
  end

  context "扱えないお金がきた時" do
    before do
      vm.insert(1)
    end

    it 'totalには加算されていないこと' do
      pending "後でやる"
      vm.total.should == 0
    end

    it 'pay_backでは1円が返ること' do
      vm.pay_back.should == 1
    end
  end
end
