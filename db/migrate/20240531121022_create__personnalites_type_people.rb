class CreatePersonnalitesTypePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_type_people do |t|
      t.string :name

      t.timestamps
    end
  end
end