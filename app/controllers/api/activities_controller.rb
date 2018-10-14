class Api::ActivitiesController < ApplicationController

  def index
    #current_user = User.find(1) #delete out after testing
    @activities = current_user.activities
    render 'index.json.jbuilder'
  end

  def create
    @activity = Activity.new(
                             name: params[:name]
                            
                            )
  
    if @activity.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @activity.errors.full_messages }, status: :bad_request
    end
  end

  def show
     @activity = Activity.find(params[:id])
     render 'show.json.jbuilder'
  end 

  def update
    @activity = Activity.find(params[:id])

    @activity.name = params[:name] || @activity.name
    
    @activity.save

    
    if @activity.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @activity.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    render json: {message: 'Your activity was deleted'}
  end
end
