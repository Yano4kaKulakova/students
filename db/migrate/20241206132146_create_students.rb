class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.belongs_to :klass, null: false, foreign_key: true
      t.integer :school

      t.timestamps
    end
  end
end
