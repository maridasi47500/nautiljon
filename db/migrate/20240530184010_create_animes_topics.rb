class CreateAnimesTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_topics do |t|
      t.string :name

      t.timestamps
    end
  end
end