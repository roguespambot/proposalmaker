class Proposal < ActiveRecord::Base
	has_one :client
	has_many :fees 
	has_many :sections

	def calculate_total_fees
		fees.inject(0) { |sum, fee| sum + fee.amount }
	end

	def calculate_mandatory_fees
		fees.where("optional = false").inject(0) { |sum, fee| sum + fee.amount }
	end
end