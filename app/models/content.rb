class Content < ApplicationRecord
  belongs_to :message

  validates :contents_type, inclusion: {in: %w[HTML FormattedText Text], message: "%{value} is not a valid content type"}
end
