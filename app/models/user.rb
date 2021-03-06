class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :children
  has_many :jobs
  has_many :job_activities, through: :jobs 
end
