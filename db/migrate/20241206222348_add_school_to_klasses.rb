class AddSchoolToKlasses < ActiveRecord::Migration[8.0]
  def change
    add_reference :klasses, :school, foreign_key: true
  end
end
