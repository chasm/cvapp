require 'spec_helper'

describe User do
  describe "email" do
    it "must have an email to save" do
      u = User.new

      u.save
      expect(u).not_to be_valid

      u.email = "bob@example.com"
      u.save
      expect(u).to be_valid
    end
  end
end
