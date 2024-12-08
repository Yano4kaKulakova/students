class Klass < ApplicationRecord
    belongs_to :school
    has_many :students
end
