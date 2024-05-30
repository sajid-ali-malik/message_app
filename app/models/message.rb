class Message < ApplicationRecord
  acts_as_paranoid

  has_many :contacts, dependent: :destroy
  has_many :contents, dependent: :destroy
  belongs_to :sent_by_contact, class_name: 'Contact', optional: true

  validates :description, presence: true

    before_create :set_sent_at
    before_update :set_edited_at
    before_destroy :set_deleted_at

  private

  def set_sent_at
    self.sent_at = Time.current
  end

  def set_edited_at
    self.edited_at = Time.current
  end

  def set_deleted_at
    self.deleted_at = Time.current
  end
end
