class IntentionToRegister < ActiveRecord::Base
  belongs_to :new_home
  validates :tel, presence: true
end
