class ExecutiveUser < ApplicationRecord
  belongs_to :user
  has_many :tickets
  has_one :performance_report
end
