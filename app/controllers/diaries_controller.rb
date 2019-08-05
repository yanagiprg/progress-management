class DiariesController < ApplicationController

  def index
    @member = Member.find(params[:member_id])
    @diaries = @member.diaries.order(created_at: :desc)
  end

  def new
    @member = Member.find(params[:member_id])
    @diary = @member.diaries.new
  end

  def create
    @member = Member.find(params[:member_id])
    @diary = @member.diaries.create(diary_params)
    redirect_to member_path(@member)
  end

  def show
    @member = Member.find(params[:member_id])
    @diary = @member.diaries.find(params[:id])
  end

  def edit
    @member = Member.find(params[:member_id])
    @diary = @member.diaries.find(params[:id])
  end

  def update
    @member = Member.find(params[:member_id])
    @diary = @member.diaries.find(params[:id])
    @diary.update(diary_params)
    redirect_to member_path(@member)
  end

  def destroy
    @member = Member.find(params[:member_id])
    @diary = @member.diaries.find(params[:id])
    @diary.destroy
    redirect_to member_path(@member)
  end

private
  def diary_params
    params.require(:diary).permit(:target, :taking_action)
  end

end
