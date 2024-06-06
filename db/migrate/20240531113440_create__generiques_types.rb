class CreateGeneriquesTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :_generiques_types do |t|
      t.string :name

      t.timestamps
    end
  end
end