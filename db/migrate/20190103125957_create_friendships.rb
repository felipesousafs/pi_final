class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.boolean :accepted

      t.timestamps
    end
    add_reference :friendships, :sender, foreign_key: {
        to_table: :users}
    add_reference :friendships, :receiver, foreign_key: {
        to_table: :users}
  end
end
