require 'rails_helper'

describe User do
  describe '#create' do

    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "654321")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    it "is invalid with a 5length password" do
      user = build(:user, password:"12345")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end

    it "is valid with a 6length password" do
      user = build(:user, password:"123456",password_confirmation:"123456")
      expect(user).to be_valid
    end

  end
end


# describe User do
#   describe '#create' do
#     it "is invalid with a 5length password" do
#       user = User.new(email:"sample@sample.com",password: "12345",password_confirmation: "12345")
#       user.valid?
#       expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
#     end
#   end
# end

