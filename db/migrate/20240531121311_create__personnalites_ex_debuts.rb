class CreatePersonnalitesExDebuts < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_ex_debuts do |t|
      t.string :name

      t.timestamps
    end
  end
end