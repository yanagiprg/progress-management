class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.string :target
      t.string :taking_action

      t.timestamps
    end
  end
end
