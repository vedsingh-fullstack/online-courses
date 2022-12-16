class Course < ApplicationRecord
  has_many :course_talents, dependent: :destroy
  has_many :talents, through: :course_talents
  belongs_to :author

  validates :title, presence: true
  validates :description, presence: true
  validates :released_on, presence: true
  validates :author, presence: true
end
