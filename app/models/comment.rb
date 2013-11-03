class Comment < ActiveRecord::Base
  attr_accessible :author, :details, :event_id

  validates_presence_of :event_id, :details, :author

  belongs_to :event 

end
