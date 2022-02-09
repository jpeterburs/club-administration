class BalancesController < ApplicationController
  def show
    return render(:new) unless params[:start_date] && params[:end_date]
    
    @transactions = BankTransaction.for_time_period(params[:start_date], params[:end_date])
    @balance = Balance.new(@transactions, nil) # TODO add bank account
  end
  end
  
  def new
  end
end
