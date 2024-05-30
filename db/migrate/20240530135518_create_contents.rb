class CreateContents < ActiveRecord::Migration[7.1]
  def change
    create_table :contents do |t|
      t.text :value
      t.string :content_type
      t.references :message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
