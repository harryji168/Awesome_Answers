class JobPost < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true, length: { minimum: 100 }
    validates :min_salary, numericality: true
end
