class Event < ActiveRecord::Base
  belongs_to :user, :foreign_key => "host"
  has_many :user_events, :dependent => :destroy 
  has_many :users, :through => :user_events

end
