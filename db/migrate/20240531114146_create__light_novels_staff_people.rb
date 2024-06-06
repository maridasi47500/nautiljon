class CreateLightNovelsStaffPeople < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels_staff_people do |t|
      t.string :name

      t.timestamps
    end
  end
end