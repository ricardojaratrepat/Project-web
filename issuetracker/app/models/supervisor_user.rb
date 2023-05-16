class SupervisorUser < ApplicationRecord
  belongs_to :user
  has_many :executive_users
end
