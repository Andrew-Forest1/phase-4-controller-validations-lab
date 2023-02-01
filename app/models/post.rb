class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}
    validates :content, length: {minimum: 1000}
end
