require 'rails_helper'

RSpec.describe User, type: :model do
  it "email should be in a valid format" do
    user = User.new(first_name:"John", last_name:"Smith", email:"jsmith@gmail.com", password:"1234pass")
    user2 = User.new(first_name:"John", last_name:"Smith", email:"jsmith.com", password:"1234pass")
    expect(user).to be_valid;
    expect(user2).not_to be_valid;
  end

  it "email should be unique" do
    User.create(email:"felisa@gmail.com")
    user2 = User.new(email:"felisa@gmail.com")
    expect(user2).not_to be_valid;
  end

  it "email should be unique" do
    User.create(email:"felisa@gmail.com")
    user2 = User.new(email:"felisa@gmail.com")
    expect(user2).not_to be_valid;
  end

  it "all fields must be required" do
    user = User.new(first_name:"John", last_name:"Smith", email:"jsmith@gmail.com", password:"1234pass")
    user2 = User.new(first_name:"John", email:"jsmith@gmail.com")
    expect(user).to be_valid;
    expect(user2).not_to be_valid;
  end

  it "password field must be at least 6 characters long" do
    user = User.new(first_name:"John", last_name:"Smith", email:"jsmith@gmail.com", password:"1234pass")
    user2 = User.new(first_name:"John", last_name:"Smith", email:"jsmith@gmail.com", password:"1234")
    expect(user).to be_valid;
    expect(user2).not_to be_valid;
  end
end
