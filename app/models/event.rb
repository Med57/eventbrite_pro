class Event < ApplicationRecord
  has_many :users, through: :attendance
  has_many :attendances
  belongs_to :user

  validates :start_date, presence: true

  validates :duration, presence: true, numericality: {odd: 5 }, numericality: {greater_than_or_equal_to: 1 }

  validates :title, presence: true, length: {in: 5..140}

  validate :description, presence: true, length: {in: 20..1000}

  validate :price, presence:true, length: {in: 1..1000}, numericality: {greater_than_or_equal_to: 1 }

  validate :location, presence:true,

end
