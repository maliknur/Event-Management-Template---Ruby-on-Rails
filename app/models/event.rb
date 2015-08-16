class Event < ActiveRecord::Base
  belongs_to :user, foreign_key: 'host'

end
