class Api::ChildController < ApplicationController

  def index
    @children = Children.all
    render 'index.json.jbuilder'
  end

  def create
    @child = Child.new(
                       name: params[:name],
                       age: params[:age],
                       gender: params[:gender],
                       user_id: params[:user_id]
                      )
    if @child.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @child.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @child = Child.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @child = Child.find(params[:id])

    @child.name = params[:name] || @child.name
    @child.age = params[:age] || @child.age
    @child.gender = params[:gender] || @child.gender
    @child.user_id = params[:user_id] || @child.user_id

    if child.save
      render 'show.json.jbuilder'
    else
      render json: {erros: @child.erros.full_messages }, status: :bad_request
    end
  end

  def destroy
    @child = Child.find(params[:id])
    @child.destroy

    render json: {messages: 'Your child has been removed'}
  end
end
