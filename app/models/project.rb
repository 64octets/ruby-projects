class Project < ActiveRecord::Base
  has_many :images
  has_one :image
end
