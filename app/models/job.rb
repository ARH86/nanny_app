class Job < ApplicationRecord
belongs_to :user
belongs_to :child
has_many :job_activities
has_many :activities, through: :job_activities


  def friendly_start_time
     start_time.strftime("%A, %d %b %Y %l:%M %p")
  end

  def friendly_end_time
    end_time.strftime("%A, %d %b %Y %l:%M %p")
  end


end
