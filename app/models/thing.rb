class Thing < ApplicationRecord
  has_many :doings, dependent: :destroy
end
