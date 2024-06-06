class CreateParolesStaffRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :_paroles_staff_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end