class MovePasswordFromMembersToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :password_digest, :string
    remove_column :members, :password_digest, :string
  end

  def down
    add_column :members, :password_digest, :string
  end

end
