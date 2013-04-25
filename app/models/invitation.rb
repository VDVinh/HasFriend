class Invitation < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  belongs_to :job,  :dependent => :destroy
end
