class Event < ActiveRecord::Base
  attr_accessible :date, :description, :title, :image

  mount_uploader :image, ImageUploader

  validates_presence_of :title, :date, :description, :image

  has_many :comments, :dependent => :destroy
end
