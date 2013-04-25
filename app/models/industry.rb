class Industry < ActiveRecord::Base
  attr_accessible :name, :descriptions
has_many :jobs
end
