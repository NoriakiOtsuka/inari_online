class AddNameToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :membership_number, :string
  end
end
