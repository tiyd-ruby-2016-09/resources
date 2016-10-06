require 'active_record'

class Character < ApplicationRecord
  validates :name, presence: true
end
