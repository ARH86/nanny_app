class Api::ActivitiesController < ApplicationController

  def index
    @activities = current_user.job_activies
    render 'index.json.jbuilder'
  end

  def create
    @activity = @Job.activities.new(
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
end
