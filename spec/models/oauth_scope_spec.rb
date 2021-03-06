require 'spec_helper'

describe OauthScope do
  before do
    @valid_attributes = {
      :scope_name => 'default',
      :name => 'Default Scope'
    }
  end
  
  it { should validate_presence_of(:scope_name).with_message(/can't be blank/)}
  it { should validate_presence_of(:name).with_message(/can't be blank/)}
  
  it "should create a new oauth scope with valid attributes" do
    app = OauthScope.create!(@valid_attributes)
  end
end
