class Api::JobActivitiesController < ApplicationController

  def index
    #current_user = User.find(1) #delete out after testing
    @job_activities = current_user.job_activities
    render 'index.json.jbuilder'
  end

  def create
    @job_activity = JobActivity.new(  
                                        activity_id: params[:activity_id],
                                         start_time: params[:start_time],
                                         duration: params[:duration],
                                         job_id: params[:job_id]
                                         )
    if @job_activity.save
      render 'show.json.jbuilder'  
    else
      render json: {errors: @job_activity.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @job_activity = JobActivity.find(params[:id])
    render 'show.json.jbuilder'
  end 

  def update
    @job_activity = JobActivity.find(params[:id])

    @job_activity.job_id = params[:job_id] || @job_activity.job_id
    @job_activity.activity_id = params[:activity_id] || @job_activity.activity_id
    @job_activity.start_time = params[:start_time] || @job_activity.start_time
    @job_activity.duration = params[:duration] || @job_activity.duration

    if job_activity.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @job_activity.errors.full_messages }, status: :bad_request
    end
  end
  
  def destroy
    @job_activity = JobActivities.find(params[:id])
    @job_activity.destroy

    render json: {messages: 'Your job has been removed'}
  end
end

