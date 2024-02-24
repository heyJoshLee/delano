require 'rails_helper'

RSpec.describe "SessionsController", type: :request do
 
 
  context "with valid login information" do
    before(:all) do
      post "/users", params: { user: { email: "email@email.com", password: "password"} }
    end


   skip it "returns a 401 code" do
      assert_response 401
    end

    skip it "doesn't set the session" do
      assert_equal(nil, session[:user_id])
    end
  end

  context "with invalid login information" do

  end

  context "logging out" do
    skip it "clears sessions[:user_id]" do
      assert_equal(nil, session[:user_id])
    end
  end


end
