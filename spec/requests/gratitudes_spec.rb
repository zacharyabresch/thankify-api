require 'rails_helper'

RSpec.describe "Gratitudes", type: :request do
  describe "GET /gratitudes" do
    it "works! (now write some real specs)" do
      get gratitudes_path
      expect(response).to have_http_status(200)
    end
  end
end
