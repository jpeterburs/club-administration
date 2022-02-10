class BalancesController < ApplicationController
  def new
  end

  def result
    @transactions = if params[:balance][:start_date].present? && params[:balance][:end_date].present?
                      BankTransaction.for_time_period(params[:start_date], params[:end_date])
                    else
                      BankTransaction.all
                    end
    @balance = Balance.new(@transactions, nil) # TODO add bank account

    render turbo_stream: turbo_stream.update('result', partial: 'result')
  end
end
