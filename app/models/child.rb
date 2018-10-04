class Child < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :user_id, presence: true

  validates :age, presence: true
  validates :age, numerically: {greater_than: 0}
  validates :gender, presence: true

  belongs_to :user
  
  has_many :job_activities, through :job
end
