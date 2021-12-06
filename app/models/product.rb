class Product < ApplicationRecord
  include PgSearch::Model

  enum :category, [:toys, :electronics, :food]

  pg_search_scope :search_by_name,
    against: :name,
    using: { tsearch: { prefix: true } }

  scope :by_category, ->(value) { send(value) if value.in?(categories.keys) }
  scope :search, ->(value) { search_by_name(value) if value.present? }
end
