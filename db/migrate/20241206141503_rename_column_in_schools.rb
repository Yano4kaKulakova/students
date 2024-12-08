class RenameColumnInSchools < ActiveRecord::Migration[8.0]
  def change
    rename_column :schools, :type, :name
  end
end
