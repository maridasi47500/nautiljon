class CreateDramasGeneriquesParoles < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_generiques_paroles do |t|
      t.string :name

      t.timestamps
    end
  end
end