class Book < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body,length: { maximum:200 } ,presence: true

  def get_profile_image
  unless profile_image.attached?
    file_path = Rails.root.join('app/assets/images/default-image.jpg')
    profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  end
  profile_image.variant(resize_to_limit: [100,100]).processed
  end


end
