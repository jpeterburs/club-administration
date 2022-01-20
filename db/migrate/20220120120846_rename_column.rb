class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :members, :date_of_brith, :date_of_birth
  end
end
