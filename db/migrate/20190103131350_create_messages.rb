class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text

      t.timestamps
    end

    add_reference :messages, :sender, foreign_key: {
        to_table: :users}
    add_reference :messages, :receiver, foreign_key: {
        to_table: :users}
  end
end
