class AddMemberIdToDiary < ActiveRecord::Migration[5.2]
  def change
    add_reference :diaries, :member, foreign_key: true
  end
end
