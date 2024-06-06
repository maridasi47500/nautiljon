class CreateAnimesOsts < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_osts do |t|
      t.string :name

      t.timestamps
    end
  end
end