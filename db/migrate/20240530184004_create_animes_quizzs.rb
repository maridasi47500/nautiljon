class CreateAnimesQuizzs < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_quizzs do |t|
      t.string :name

      t.timestamps
    end
  end
end