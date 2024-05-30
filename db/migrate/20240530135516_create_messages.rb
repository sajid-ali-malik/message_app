class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :medium
      t.datetime :sent_at
      t.datetime :edited_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
