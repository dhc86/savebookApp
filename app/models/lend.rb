class Lend < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :borrower_id, presence: true
  validates :borrower_id, numericality: { only_integer: true }

  validate :due_date, if: :checkout
  validate :checkin_date, if: :checkout

  def due_date
    errors.add(:due, 'due date must be after checkout') if due && due < checkout
  end

  def checkin_date
    errors.add(:checkin, 'checkin date must be after checkout') if checkin && checkin < checkout 
  end

  def overdue?
    if checkin
      return checkin > due 
    elsif checkin.nil?
      return due < Date.today
    end
  end

  # Make due date, checkin date and checkout date in the form when lending is happeninh
  # <input type="date" name="due"> 

end
