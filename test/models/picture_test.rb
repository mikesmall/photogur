require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a picture can be created" do
    picture = Picture.create!(
      title:  'Breakfast tomorrow',
      artist: 'Yahoo Serious',
      url:    'https://custardstand.com/wp-content/uploads/custard-stand-chili-hot-dogs.jpg'
    )
    assert picture.persisted?
  end

  test "a picture can be created 2" do
    picture = Picture.create(
      title:  'Pants Patching Customer Lineup',
      artist: 'Butch Hunkington',
      url:    'hhttp://img.wennermedia.com/featured-promo-724/rs-241794-GettyImages-86118756.jpg'
    )
    assert picture.invalid?
  end

end
