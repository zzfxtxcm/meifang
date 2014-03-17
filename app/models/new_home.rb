class NewHome < ActiveRecord::Base
  belongs_to :area
  belongs_to :developers
  belongs_to :status

  has_many :information, dependent: :destroy

  VALID_NUMBER_REGEX = /[\d]/
  validates :name, presence: true
  validates :price, presence: true, format: { with: VALID_NUMBER_REGEX }
  validates :tel, presence:true
  validates :project_address, presence:true
  validates :sales_address, presence:true
  validates :area_id, presence:true
  validates :developers_id, presence:true
  validates :agents, presence:true
  validates :covers, presence:true
  validates :gfa, presence:true
  validates :pool_area, presence:true
  validates :parking, presence:true
  validates :number_users, presence:true
  validates :construction_category, presence:true
  validates :building_towers, presence:true
  validates :floors_case, presence:true
  validates :main_units, presence:true
  validates :house_area, presence:true
  validates :greening_rate, presence:true
  validates :volume_rate, presence:true
  validates :fit, presence:true
  validates :property, presence:true
  validates :school, presence:true
  validates :hospital, presence:true
  validates :bank, presence:true
  validates :shopping, presence:true
  validates :neighborhoods, presence:true
  validates :landscapes, presence:true
  validates :bus, presence:true
  validates :car, presence:true
  validates :content, presence:true
  validates :status, presence:true

  mount_uploader :new_home_thumb, NewHomeThumbUploader
end
