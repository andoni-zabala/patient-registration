class Patient < ApplicationRecord
  has_one_attached :document_photo

  validates :name, :email, :phone, presence: true
  validates :email, uniqueness: true
end
