class Project < ApplicationRecord
  # enum status: %i[pending sent]
  belongs_to :user, dependent: :destroy
  has_one :supplier_contact
  has_many :cold_rooms, dependent: :delete_all
end
