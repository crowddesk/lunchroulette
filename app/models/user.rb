class User < ApplicationRecord
  has_many :groups, foreign_key: 'leader'

  validates :email, presence: true, reduce: true, format: {
    with: /\A\S+@crowddesk\.de\z/,
    message: "is not a valid CrowdDesk email address"
  }
end