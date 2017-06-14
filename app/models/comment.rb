class Comment < ApplicationRecord

  # tells Rails there'ss a picture_id foreign key in your database table
  belongs_to :picture

end
