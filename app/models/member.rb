class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :date_of_birth, presence: true
  validates :occupation, presence: true

  def to_s
    "#{first_name} #{last_name}"
  end
end
