class Balance
  delegate :to_s, to: :balance

  def initialize(bank_transactions, bank_account)
    @bank_transactions = bank_transactions
    @bank_account = bank_account
  end

  def balance
    @bank_transactions.map(&:amount)&.sum
  end

  def active
    @bank_transactions.map(&:amount)&.sum
  end

  def passive
    @bank_transactions.map(&:amount)&.sum
  end
end
