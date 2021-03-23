class Activity < ApplicationRecord
    has_many :signups
    has_many :campers, through: :signups
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :difficulty, presence: true
    validates :difficulty, numericality: {greater_than:0, less_than:6}

end
