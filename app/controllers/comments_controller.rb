class CommentsController < ApplicationController
  def index
      @flash_messages = flash[:errors]
  end
  def create
      user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
      if !user.valid?
          flash[:errors] = user.errors.full_messages
          redirect_to '/'
      else
          user.save
          redirect_to '/'
      end
  end

end
