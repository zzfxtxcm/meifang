class AreaRange < ActiveRecord::Base
  has_many :new_homes, dependent: :destroy
end
