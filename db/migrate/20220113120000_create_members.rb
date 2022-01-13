class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :date_of_brith
      t.string :occupation

      t.timestamps
    end
  end
end
