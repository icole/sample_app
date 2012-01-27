require 'spec_helper'

describe "FriendlyForwardings" do
  
  it "should forward to the requested page after signin" do
    user = Factory(:user)
    visit edit_user_path(user)
    fill_in :email,     :with => user.email
    fill_in :password,  :with => user.password
    click_button
    respone.should render_template('user/edit')
end
