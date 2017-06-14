class Picture < ApplicationRecord

  # there's a picture_id foreign key referring to you in the comments table
  has_many :comments

  @comment = Comment.all 

end
