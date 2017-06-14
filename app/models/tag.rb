class Tag < ApplicationRecord

  has_and_belongs_to_many :pictures

  # 'Through' association:

  has_many: :comments, through: :pictures
  
end#Tag
