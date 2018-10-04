class Job < ApplicationRecord
belongs_to :user
belongs_to :child
has_many :job_activities
has many :activities, through :job_activity
end
