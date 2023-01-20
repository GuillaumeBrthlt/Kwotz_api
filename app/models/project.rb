class Project < ApplicationRecord
  enum :status, %i[pending sent archived]
  belongs_to :user
  has_one :supplier_contact
  has_many :quote_request, dependent: :destroy
  has_many :cold_rooms, dependent: :destroy
  has_many :spare_parts, dependent: :destroy
end
