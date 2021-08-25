class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
end

# class GoodnessValidator < ActiveModel::Validator
#   def validate(record)
#     if record.category == "neptunian"
#       record.errors.add :base, "wrong category"
#     end
#   end
# end
