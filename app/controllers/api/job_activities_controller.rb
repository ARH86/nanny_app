class Api::JobActivitiesController < ApplicationController

  def index
    @job_activities = current_user.job_activities
    render 'index.json.jbuilder'
  end

  def create
    @job_activities = Job_activities.new(
                                         job_id: params[:job_id],
                                         activity_id: params[:activity_id],
                                         start_time: params[:start_time],
                                         duration: params[:duration]
                                         )
    render 'show.json.jbuilder'
  end 
end
