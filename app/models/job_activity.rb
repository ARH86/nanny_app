class JobActivity < ApplicationRecord
  belongs_to :user
  has_many :activity
end
