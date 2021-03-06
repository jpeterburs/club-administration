class BalancesController < ApplicationController
  def index
  end

  def generate
    @transactions = if params[:balance][:start_date].present? && params[:balance][:end_date].present?
                      BankTransaction.for_time_period(params[:balance][:start_date], params[:balance][:end_date])
                    else
                      BankTransaction.all
                    end
    @balance = Balance.new(@transactions, nil) # TODO add bank account

    render turbo_stream: turbo_stream.update('result', partial: 'result')
  end
end
