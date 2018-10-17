class Ebook < ApplicationRecord
    has_one_attached :file
    has_one_attached :image
end
