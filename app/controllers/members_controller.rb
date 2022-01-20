class MembersController < ApplicationController
  before_action :load_member, only: %i[show edit update destroy]

  def index
    @members = Member.all
  end

  def show
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to @member
    else
      render :new
    end
  end

  def edit
  end

  def update
    @member.assign_attributes(member_params)

    if @member.save
      redirect_to @member
    else
      render :edit
    end
  end

  def destroy
    @member.destroy

    redirect_to members_path
  end

  private

  def load_member
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(
      :first_name,
      :last_name,
      :email,
      :date_of_birth,
      :occupation
    )
  end
end
