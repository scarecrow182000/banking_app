class Account < ActiveRecord::Base
  has_many :transactions
  validates :balance, presence: true, :numericality => { :greater_than_or_equal_to => 0 }

  attr_accessor :balance

  def initialize
    self.balance = 0
  end

  def balance
  end

end
