require 'test_helper'

class AccountTest < ActiveSupport::TestCase

  def test_balance_is_required
    account = Account.new
    account.save
    assert_equal true, account.errors[:balance].any?
  end

  def test_balance_cant_be_negative
    account = Account.new balance: -5
    account.valid?
    assert_equal true, account.errors[:balance].any?
  end

  def test_balance_can_be_positive
    account = Account.new balance: 5
    account.valid?
    assert_equal false, account.errors[:balance].any?
  end

end
