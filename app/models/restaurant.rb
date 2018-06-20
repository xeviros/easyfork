class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :name, presence: true, uniqueness: true

  include PgSearch
  pg_search_scope :search_by_name_and_category,
    against: [ :category, :name  ],
    using: {
      tsearch: { prefix: true }
    }

end
