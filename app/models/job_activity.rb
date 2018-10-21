class JobActivity < ApplicationRecord
  belongs_to :job
  belongs_to :activity


  def friendly_start_time
    start_time.strftime("%A, %d %b %Y %l:%M %p")
  end

end
