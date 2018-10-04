class Job < ApplicationRecord
belongs_to :user
belongs_to :child
has_many :job_activities
end
