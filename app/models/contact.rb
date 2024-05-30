class Contact < ApplicationRecord
  belongs_to :message

  has_many :sent_messages, class_name: 'Message', foreign_key: 'sent_by_contact_id'
end
