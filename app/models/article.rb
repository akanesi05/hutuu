class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :genre, presence: true
end
