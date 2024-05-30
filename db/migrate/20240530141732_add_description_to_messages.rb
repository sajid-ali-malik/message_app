class AddDescriptionToMessages < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :description, :text
  end
end
