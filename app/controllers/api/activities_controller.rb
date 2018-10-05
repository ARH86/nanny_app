class Api::ActivitiesController < ApplicationController

  def index
    @activities = current_user.job_activies
    render 'index.json.jbuilder'
  end

  def create
    @activity = @Activities.new(
                                 activity_id: params[:activity_id],
                                 name: params[:name],
                                 start_time: params[:start_time],
                                 duration: params[:duration]
                                )
  
    if activities.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @activities.erros.full_messages }, status: :bad_request
    end
  end

  def update
    @activity = Activity.find(params[:activity_id])

    @activity.name = params[:name] || @activity.name
    @activity.start_time = params[:start_time] || @activity.start_time
    @activity.duration = params[:duration] || @activity.duration
    @activity.save

    
    if activity.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @activity.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @activity = Activity.find(params[:activity_id])
    @activity.destroy

    render json: {message: 'Your activity was deleted'}
  end
end
