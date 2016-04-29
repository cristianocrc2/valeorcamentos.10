require 'rails_helper'

RSpec.describe "Nichos", type: :request do
  describe "GET /nichos" do
    it "works! (now write some real specs)" do
      get nichos_path
      expect(response).to have_http_status(200)
    end
  end
end
