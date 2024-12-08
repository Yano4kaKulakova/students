class ChangeColumnTypeInStudents < ActiveRecord::Migration[8.0]
  def change
    remove_column :students, :school, :integer
    add_reference :students, :school, foreign_key: true
  end
end
