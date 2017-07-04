class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :table

  validates :user_id, :table_id, null: false
end
