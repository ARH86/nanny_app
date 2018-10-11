class Api::JobsController < ApplicationController
   before_action :authenticate_user

  def index 
   # current_user = User.find(1) #delete out after testing
    @jobs = current_user.jobs
    render 'index.json.jbuilder'
  end

  def create
    @job = Job.new(
                   start_time: params[:start_time],
                   end_time: params[:end_time],
                   child_id: params[:child_id],
                   user_id: 1 #current_user.id
                  )
    if @job.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @job.errors.full_messages }, status: :bad_request 
    end
  end

  def show
    @job = Job.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update 
     @job = Job.find(params[:id])

     @job.job_id = params[:id] || @job.job_id
     @job.start_time = params[:start_time] || @job.start_time
     @job.end_time = params[:end_time] || @job.end_time
     @job.child_id = params[:child_id] || @job.child_id

     if job.save
      render 'show.json.jbuilder'
     else
      render json: {errors: @job.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    render json: {message: 'Your job was deleted'}
  end
end
