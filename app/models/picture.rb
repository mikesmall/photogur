class Picture < ApplicationRecord

  # there's a picture_id foreign key referring to you in the comments table
  has_many :comments

  # Removed in lecture but I don't remember why:
  # @comment = Comment.all

  has_and_belongs_to_many :tags

end#Picture
