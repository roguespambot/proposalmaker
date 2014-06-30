class Client < ActiveRecord::Base
	has_many :proposals

	def calculate_owed_money
		proposals = Proposal.where("client_id = ? AND status = ?", self.id, 2)
		proposals.inject(0) { |sum, p| sum + p.calculate_total_fees } 
	end
end