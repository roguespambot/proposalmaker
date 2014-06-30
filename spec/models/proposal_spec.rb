require "rails_helper"

describe Proposal do
	it { should have_one :client }
	it { should have_many :sections }
	it { should have_many :fees }
end