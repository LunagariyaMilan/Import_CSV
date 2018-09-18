class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @users = User.all
     # @users.to_json
  end

  def import
    User.import(params[:file])
    redirect_to root_url, notice: "CSV Imported."
  end

  def create
    if params[:data].present?
      @id = params[:data].keys[0]
      @user =  User.find(@id)
      @data = params[:data]
    p  @h = @data.values[0]
    p @h.values[0]
      if @h.keys[0] == "a"
        @user.a =  @h.values[0]
      elsif @h.keys[0] == "b"
        @user.b =  @h.values[0]
      else
         @user.c =  @h.values[0]
      end
      @user.save
    end
  end
end
