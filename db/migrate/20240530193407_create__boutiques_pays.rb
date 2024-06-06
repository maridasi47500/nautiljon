class CreateBoutiquesPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_boutiques_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end