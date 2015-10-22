class Lend < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :borrower_id, presence: true
  validates :borrower_id, numericality: { only_integer: true }

end