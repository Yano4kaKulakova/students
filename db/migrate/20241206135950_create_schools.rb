class CreateSchools < ActiveRecord::Migration[8.0]
  def change
    create_table :schools do |t|
      t.string :type
      t.integer :number

      t.timestamps
    end
  end
end
