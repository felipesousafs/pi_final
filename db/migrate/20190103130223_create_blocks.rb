class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_reference :blocks, :blocked, foreign_key: {
        to_table: :users}
  end
end
