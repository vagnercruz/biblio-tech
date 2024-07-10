# app/models/book.rb
class Book < ApplicationRecord
  enum status: { backlog: 0, reading: 1, completed: 2 }
  has_one_attached :cover_image
  has_one_attached :pdf
end
