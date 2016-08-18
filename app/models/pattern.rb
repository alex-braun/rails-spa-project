class Pattern < ActiveRecord::Base
  belongs_to :user
  has_many :beats
end
