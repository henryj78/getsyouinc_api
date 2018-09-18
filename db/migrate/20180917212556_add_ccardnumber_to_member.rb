class AddCcardnumberToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :ccardnumber, :string
    add_column :members, :card_expire_date, :string
  end
end
