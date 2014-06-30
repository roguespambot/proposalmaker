require "rails_helper"

describe Proposal do
	it { should have_one :client }
	it { should have_many :sections }
	it { should have_many :fees }

	describe "calculate_total_fees" do
		it "calculates the total for all fees associated with the proposal" do
			test_proposal = Proposal.create 
			first_fee = Fee.create(proposal_id: test_proposal.id, amount: 100.00)
			second_fee = Fee.create(proposal_id: test_proposal.id, amount: 200.00)
			expect(test_proposal.calculate_total_fees).to eq 300.00
		end
	end

	describe "calculate_mandatory_fees" do
		it "calculates the total for all non-optional fees associated with the proposal" do 
			test_proposal = Proposal.create
			test_mandatory_fee1 = Fee.create(proposal_id: test_proposal.id, amount: 100.00, optional: false)
			test_mandatory_fee2 = Fee.create(proposal_id: test_proposal.id, amount: 350.00, optional: false)
			test_optional_fee = Fee.create(proposal_id: test_proposal.id, amount: 45.00, optional: true)
			expect(test_proposal.calculate_mandatory_fees).to eq 450.00
		end
	end
end