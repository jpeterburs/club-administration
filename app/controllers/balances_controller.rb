class BalancesController < ApplicationController
  def new
  end

  def result
    return redirect_to(balances_new_path) unless params[:balance][:start_date] && params[:balance][:end_date]

    @transactions = BankTransaction.for_time_period(params[:start_date], params[:end_date])
    @balance = Balance.new(@transactions, nil) # TODO add bank account
    # TODO something is still missing here
  end
end
