class SessionsController < ApplicationController

  def new
  end

  def create
    member = Member.find_by(name: params[:name])
    session[:member_id] = member.id if member&.authenticate(params[:password])
    redirect_to :root
  end

  def destroy
    session.delete(:member_id)
    redirect_to :root
  end

end
