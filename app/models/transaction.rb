class Transaction < ActiveRecord::Base
  belongs_to :account
  validates :amount, presence: true, :numericality => { :greater_than_or_equal_to => 0 }

  def deposit(amount)
    @account.balance += amount
    return @account.balance
  end

  def withdrawl(amount)
    @account.balance -= amount
    return @account.balance
  end

end
