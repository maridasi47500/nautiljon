class CreateDramasStaffRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_staff_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end