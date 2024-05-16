class Book < ApplicationRecord
  belongs_to :bookcase
  belongs_to :author
  validate :is_bookcase_on_limit

  def is_bookcase_on_limit
    if bookcase.books.count >= bookcase.limit
      errors.add(:base, "bookcase is full")
    end
  end
end
