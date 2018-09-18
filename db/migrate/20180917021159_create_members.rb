class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :member_type
      t.string :member_description

      t.timestamps
    end
  end
end
