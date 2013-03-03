require 'spec_helper'

describe UserController do

  describe "GET 'find_all_n'" do
    it "returns http success" do
      get 'find_all_n'
      response.should be_success
    end
  end

end
