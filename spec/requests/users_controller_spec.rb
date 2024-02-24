require 'rails_helper'

RSpec.describe "UsersController", type: :request do
 
  before(:all) do
    post "/users", params: { user: { email: "email@email.com", password: "password"} }
  end


  it "creates a user" do
    assert_equal(User.all.count, 1)
  end


  it "logs in" do
    assert_equal(User.first.id, session[:user_id])

  end

  it "redirects to the root path" do
    assert_redirected_to root_path
  end


    it "Creates an organization for the user" do
      assert_equal(Organization.all.first, User.all.first.organization)
  end
end
