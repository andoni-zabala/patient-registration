class Patient < ApplicationRecord
  has_one_attached :document_photo

  validates :name, :email, :phone, presence: true
  validates :email, uniqueness: true

  scope :by_name, ->(name) { where("name ILIKE ?", "%#{name}%") if name.present? }
  scope :by_email, ->(email) { where("email ILIKE ?", "%#{email}%") if email.present? }
  scope :by_phone, ->(phone) { where(phone: phone) if phone.present? }
end
