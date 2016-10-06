require 'active_record'

class Character < ActiveRecord::Base
  validates :name, presence: true
end
