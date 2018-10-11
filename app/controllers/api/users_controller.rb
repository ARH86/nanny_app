class Api::UsersController < ApplicationController
  
  def index
    @user = User.all
    render 'index.json.jbuilder'
  end

  def create
    user = User.new(
                    name: params[:name],
                    phone_number: params[:phone_number],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
    
    if user.save
      render json: {message: 'User was created successfully'}, status: :created
    else 
      render json: {message: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end
end
