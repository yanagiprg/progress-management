class DiariesController < ApplicationController

  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.create(diary_params)
    redirect_to diaries_path
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    redirect_to diaries_path if @diary.update(diary_params)
  end

  def destroy
    @diary = Diary.find(params[:id])
    redirect_to diaries_path if @diary.destroy
  end

private
  def diary_params
    params.require(:diary).permit(:target, :taking_action)
  end

end
