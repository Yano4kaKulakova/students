class School < ApplicationRecord
    has_many :klasses, dependent: :destroy
    has_many :students, dependent: :destroy
end
