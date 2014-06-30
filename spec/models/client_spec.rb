require "rails_helper"

describe Client do
	it { should have_many :proposals }

	describe "calculate_owed_money" do
		it "calculates total amount owed from all accepted proposals" do
			test_client = Client.create
			test_proposal1 = Proposal.create(client_id: test_client.id, status: 2)
			test_proposal2 = Proposal.create(client_id: test_client.id, status: 2)
			test_fee1 = Fee.create(proposal_id: test_proposal1.id, amount: 100.00)
			test_fee2 = Fee.create(proposal_id: test_proposal2.id, amount: 200.00)
			expect(test_client.calculate_owed_money).to eq 300.00
		end

		it "should not include amounts from unaccepted proposals" do
			test_client = Client.create
			test_proposal1 = Proposal.create(client_id: test_client.id, status: 2)
			test_proposal2 = Proposal.create(client_id: test_client.id, status: 2)
			test_proposal3 = Proposal.create(client_id: test_client.id, status: 1)
			test_fee1 = Fee.create(proposal_id: test_proposal1.id, amount: 100.00)
			test_fee2 = Fee.create(proposal_id: test_proposal2.id, amount: 200.00)
			test_fee3 = Fee.create(proposal_id: test_proposal3.id, amount: 300.00)
			expect(test_client.calculate_owed_money).to eq 300.00
		end

		it "should not include amounts from other clients" do
			test_client = Client.create
			test_client2 = Client.create
			test_proposal1 = Proposal.create(client_id: test_client.id, status: 2)
			test_proposal2 = Proposal.create(client_id: test_client.id, status: 2)
			test_proposal3 = Proposal.create(client_id: test_client2.id, status: 2)
			test_fee1 = Fee.create(proposal_id: test_proposal1.id, amount: 100.00)
			test_fee2 = Fee.create(proposal_id: test_proposal2.id, amount: 200.00)
			test_fee3 = Fee.create(proposal_id: test_proposal3.id, amount: 900.00)
			expect(test_client.calculate_owed_money).to eq 300.00
		end
	end
end