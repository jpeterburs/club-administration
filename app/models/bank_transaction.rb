class BankTransaction < ApplicationRecord
  def self.for_time_period(start_date, end_date)
    where('transaction_time >= ? AND transaction_time <= ?', start_date, end_date)
  end
end
