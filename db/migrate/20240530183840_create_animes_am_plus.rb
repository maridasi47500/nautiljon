class CreateAnimesAmPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_am_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end