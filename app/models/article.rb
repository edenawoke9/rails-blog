class Article < ApplicationRecord
    has_many :articles
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
