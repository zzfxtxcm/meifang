class Information < ActiveRecord::Base
  belongs_to :category

  default_scope -> { order('created_at DESC') }

  validates :category, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :keywords, length: { maximum: 100 }
  validates :description, length: { maximum: 200 }

  mount_uploader :information_thumb, InformationThumbUploader
end
