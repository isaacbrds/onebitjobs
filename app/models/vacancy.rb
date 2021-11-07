class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :applicants

  validates :title, presence: true
  validates :location, presence: true
  validates :requirements, presence: true
  validates :description, presence: true, length: {minimum: 3, maximum: 1000}
  validates :salary, presence: true
  validates :available, presence: true
end
