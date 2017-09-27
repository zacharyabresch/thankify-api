require 'rails_helper'

RSpec.describe Thankification, type: :model do
	# It should validate the presence of at least one Gratitude
	# But how?
	it { should validate_presence_of(:gratitudes) }

	# It should accept nested attributes for Gratitude
	it { should accept_nested_attributes_for(:gratitudes) }

	# It should not be valid if Gratitude is invalid
	it { should have_many(:gratitudes) }
end
