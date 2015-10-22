class Book < ActiveRecord::Base
  belongs_to :user
  has_one :lend, dependent: :destroy

  validates :title, presence: true, length: { maximum: 500, message: 'is too long (maximum is 500 characters)' }
  validates :author, presence: true
  validates :isbn, presence: true
  validates :description, presence: true

end