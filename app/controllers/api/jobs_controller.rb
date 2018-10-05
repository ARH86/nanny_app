class Api::JobsController < ApplicationController
  before_auction :authenticate_user

  def index 
    @jobs = current_user.jobs
    render 'index.json.jbuilder'
  end

  def create
    @job = Job.new(
                   job_id: params[:job_id],
                   start_time: params[:start_time],
                   end_time: params[:end_time],
                   child_id: params[:child_id],
                   user_id: current_user.id
                  )
    if job.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @job.errors.full_messages }, status: :bad_request 
    end
  end

  def update 
       
  end

end
