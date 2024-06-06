class CreatePersonnalitesPeoplePlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_people_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end