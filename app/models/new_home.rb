class NewHome < ActiveRecord::Base
  belongs_to :area
  belongs_to :developers
  belongs_to :status

  has_many :information, dependent: :destroy

  VALID_NUMBER_REGEX = /[\d]/
  validates :name, presence: true
  validates :price, presence: true, format: { with: VALID_NUMBER_REGEX }
  validates :area_id, presence:true
  validates :developers_id, presence:true
  validates :status, presence:true

  mount_uploader :new_home_thumb, NewHomeThumbUploader
end
