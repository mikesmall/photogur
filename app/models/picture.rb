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

  def self.older_than_one_month
    Picture.where("created_at <= ?", 1.month.ago)
  end

  # if needed: a month is 2629746000 milliseconds

  def self.pictures_created_in_year(year)
    start_year = DateTime.new(year)
    end_year   = DateTime.new(year).end_of_year
    Picture.where("created_at >= ? <= ?", start_year, end_year)
  end

end#Picture
