# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :courses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :first_name, scope: :last_name

  before_destroy :transfer_course_author, prepend: true

  def transfer_course_author
    return unless courses.any?

    new_author = Author.where.missing(:courses).first

    courses.update(author: new_author)
  end
end
