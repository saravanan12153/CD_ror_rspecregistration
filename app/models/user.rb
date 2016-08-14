class User < ActiveRecord::Base
    email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :email, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => true }
    validates :first_name, :last_name, :email, :password, :presence => true
    validates :password, length: { minimum: 6 }
end
