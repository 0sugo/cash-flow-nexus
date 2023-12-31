class FinancialEntity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :categories, dependent: :destroy
  has_many :financial_groups, through: :categorisations

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
