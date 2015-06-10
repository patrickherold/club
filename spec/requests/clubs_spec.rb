require 'rails_helper'

RSpec.describe "Clubs", type: :request do
  describe "GET /clubs" do
    it "works! (now write some real specs)" do
      visit clubs_path
      page.should have_content 'golf course'
      expect(response).to have_http_status(200)
    end
  end
end
