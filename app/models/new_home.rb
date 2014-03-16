class NewHome < ActiveRecord::Base
  belongs_to :area
  belongs_to :developers
end
