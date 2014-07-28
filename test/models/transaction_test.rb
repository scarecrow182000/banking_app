require 'test_helper'

class TransactionTest < ActiveSupport::TestCase

  def test_deposit
    deposit = Transaction.deposit.new
    deposit.save
    assert_equal true, deposit.errors[:amount].any?
  end

  # def test_withdrawl
  #   withdrawl = Withdrawl.new
  #   withdrawl.save
  #   assert_equal true, Withdrawl.errors[:amount].any?
  # end

end
