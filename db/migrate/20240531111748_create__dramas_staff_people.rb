class CreateDramasStaffPeople < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_staff_people do |t|
      t.string :name

      t.timestamps
    end
  end
end