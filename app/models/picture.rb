class Picture < ApplicationRecord

  # there's a picture_id foreign key referring to you in the comments table
  has_many :comments

  has_and_belongs_to_many :tags

  # Removed in lecture but I don't remember why:
  # @comment = Comment.all

  # Code pasted for 'Photogur ActiveRecord Queries' assignment:
  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

end#Picture
