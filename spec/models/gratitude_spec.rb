require 'rails_helper'

RSpec.describe Gratitude, type: :model do
	it "should belong to a Thankification"
  it "validates presence of :body"
  it "validates length of :body >= 5"
end
