class CreateFilmsAsiatiquesEnSallesStaffRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_en_salles_staff_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end