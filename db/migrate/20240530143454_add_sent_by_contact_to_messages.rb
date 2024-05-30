class AddSentByContactToMessages < ActiveRecord::Migration[7.1]
  def change
    add_reference :messages, :sent_by_contact, foreign_key: { to_table: :contacts }
  end
end
