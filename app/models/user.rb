class User < ActiveRecord::Base

  validates_uniqueness_of :username, :case_sensitive => false, :message => "already exists"
  validates_length_of :username,  :in => 6..20, :message => "must be between 6 and 20 characters long"
  validates :email,       :presence => true
  validates_length_of :phone,   :is =>  10, :allow_blank => true,  :wrong_length => "number should be 10 digits"
  validates_numericality_of :phone,   :only_integer => true, :allow_blank => true
  validates_length_of :password,  :in => 6..20, :message => "must be between 6 and 20 characters long"

  #one to one relationship with password, When the password is no longer associated with a user, it is destroyed
  #has_one :Password, :dependent => :destroy
  
end
