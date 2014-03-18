class NewHome < ActiveRecord::Base
  belongs_to :area
  belongs_to :developers
  belongs_to :status
  belongs_to :section
  belongs_to :property_type
  belongs_to :construction_category

  has_many :information

  VALID_NUMBER_REGEX = /[\d]/
  validates :name, presence: true
  validates :price, format: { with: VALID_NUMBER_REGEX }
  validates :area, presence:true
  validates :developers, presence:true
  validates :status, presence:true

  mount_uploader :new_home_thumb, NewHomeThumbUploader
end
