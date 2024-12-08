class Student < ApplicationRecord
  belongs_to :school
  belongs_to :klass, counter_cache: true

  validate :klass_belongs_to_school

  private

  def klass_belongs_to_school
    return if klass.school_id == school_id

    errors.add(:klass_id, "выбранный класс не принадлежит выбранной школе")
  end
end
