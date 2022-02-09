class BalancesController < ApplicationController
  def def index
    if params[:date_from].blank? and params[:data_to].blank?
      @transactions = BankTransaction.all
    elsif !params[:data_from].blank? and !params[:data_to].blank?
      @transactions = BankTransaction.get_transactions_for_time_period(params[:data_from], params[:data_to])
    else
      render :nothing => true, :status => :bad_request 
    end
  end
  
  def annual_balance
    @passiva = Balance.passive()
    @activa =Balance.active()
  end
end
