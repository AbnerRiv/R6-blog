class Post < ApplicationRecord
    # to create a 1-many relationship
    has_many :comments
end
