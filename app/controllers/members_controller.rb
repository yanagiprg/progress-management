class MembersController < ApplicationController
  def index
    @members = Member.order(created_at: :asc)
    @diaries = Diary.order(created_at: :desc)
  end

  def new
    @member = Member.new
  end

  def show
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.create(member_params)
    redirect_to members_path
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    redirect_to members_path if @member.update(member_params)
  end

  def destroy
    @member = Member.find(params[:id])
    redirect_to members_path if @member.destroy
  end


private
  def member_params
    params.require(:member).permit(:name)
  end

end
