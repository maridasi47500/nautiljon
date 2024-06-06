class CreateDramasGeneriquesClips < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_generiques_clips do |t|
      t.string :name

      t.timestamps
    end
  end
end