class Order < ApplicationRecord
  belongs_to :customer
  validates :status, presence: true
  validates :total, presence: true, numericality: { greater_than: 0 }
end
