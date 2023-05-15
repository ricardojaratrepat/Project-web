class Ticket < ApplicationRecord
  belongs_to :requesting_user
  belongs_to :executive_user
end
