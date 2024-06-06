class CreateLivresTypeSecondaires < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_type_secondaires do |t|
      t.string :name

      t.timestamps
    end
  end
end