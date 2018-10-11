class Job < ApplicationRecord
belongs_to :user
belongs_to :child
has_many :job_activities
has_many :activities, through: :job_activities
end
