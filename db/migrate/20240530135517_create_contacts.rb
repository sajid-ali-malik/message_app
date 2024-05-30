class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.references :message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
