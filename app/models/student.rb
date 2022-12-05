# frozen_string_literal: true

class Student < ApplicationRecord
  has_secure_password
  validates :phone, presence: true, uniqueness: true, length: { is: 10, message: 'only 10 digits allowed' }
  validates :name, :city, presence: true, format: { with: /\A[a-zA-Z\s]+\z/,
                                                    message: 'only small letters allowed' }
  validates :city, :password, presence: true
end
