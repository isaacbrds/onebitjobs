class Company < ApplicationRecord
  has_many :vacancies

  validates :name, presence: true
  validates :description, presence: true, length: {minimum: 3, maximum: 500}
end