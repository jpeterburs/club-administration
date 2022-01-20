class CreateBankTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_transactions do |t|
      t.string :transaction_type
      t.decimal :amount
      t.string :purpose
      t.datetime :transaction_time
      t.integer :transaction_year
      t.string :sender
      t.string :receiver

      t.timestamps
    end
  end
end
