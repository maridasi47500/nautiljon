class CreateLivresAmPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_am_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end