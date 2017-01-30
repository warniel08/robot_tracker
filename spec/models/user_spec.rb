require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    let!(:user) {User.create!(username: 'the Commissioner', email: 'commissioner@gmail.com', password: 'password')}

    describe "validations" do

      it 'should validate presence of password_digest' do
        should validate_presence_of :password_digest
      end

      it 'should validate presence of email' do
        should validate_presence_of :email
      end

      it 'should validate presence of password_digest' do
        should validate_uniqueness_of :email
      end

      it "is valid when it's given an email, username, and password" do
        user.valid?
      end
    end

    describe "associations" do
      it 'has many robots' do
        should have_many(:robots)
      end
    end
  end
end
