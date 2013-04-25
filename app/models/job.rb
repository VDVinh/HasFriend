class Job < ActiveRecord::Base
  has_many :invitations
  has_many :users, :through => :invitations
  belongs_to :company, :dependent => :destroy
  belongs_to :industry, :dependent => :destroy
  attr_accessible :position, :description, :company_id, :status, :industry_id
end
