class Proposal < ActiveRecord::Base
	has_one :client
	has_many :fees 
	has_many :sections
end