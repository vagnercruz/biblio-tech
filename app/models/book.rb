# app/models/book.rb
class Book < ApplicationRecord
  enum status: { backlog: 0, reading: 1, completed: 2 }
end
