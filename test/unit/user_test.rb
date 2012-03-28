require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "valid user entry, only username, email, and password" do
      user = User.new
      user.username = "testUser1"
      user.email = "testEmail@mail1.com"
      user.password = "password1"
      assert user.save, "Did not save a valid user entry"
   end

  test "user entry no email" do
      user = User.new
      user.username = "testUser2"
      user.password = "password2"
      assert !user.save, "Saved a user without email"
  end

  test "user entry no username" do
      user = User.new
      user.email = "noUsername@email.com"
      user.password = "password3"
      assert !user.save, "Saved a user without username"
  end

  test "user entry with username already taken" do
      user = User.new
      user.username = "nowobil1"
      user.email = "valid@email.com"
      user.password = "password4"
      assert !user.save, "Saved a user which already exists in DB"
  end

  test "user entry username too short" do
      user = User.new
      user.username = "short"
      user.email = "email@mail.com"
      user.password = "password5"
      assert !user.save, "Saved a user with short username"
  end

  test "user entry username too long" do
      user = User.new
      user.username = "thisusernameiswaytoolong"
      user.email = "email2@waytoolong.com"
      user.password = "password6"
      assert !user.save, "Saved a user with long username"
  end

  test "user entry with non unique username" do
      user = User.new
      user.username = "nowobil1"
      user.email = "validemail@email.com"
      user.password = "password7"
      assert !user.save, "Saved a user with a non unique username"
  end

  test "valid user with correct phone input" do
      user = User.new
      user.username = "testuser4"
      user.email = "testemail4@email.com"
      user.phone = "1234567890"
      user.password = "password8"
      assert user.save, "Saved a user with a correct phone number input"
  end

  test "valid user with phone number too short" do
      user = User.new
      user.username = "testuser5"
      user.email = "testemail5@mail.com"
      user.phone = "123456789"
      user.password = "password9"
      assert !user.save, "Saved a user with a short phone number"
  end

  test "valid user with phone number too long" do
      user = User.new
      user.username = "testuser6"
      user.email = "testemail6@mail.com"
      user.phone = "12345678901"
      user.password = "password10"
      assert !user.save, "Saved a user with a long phone number"
  end

  test "valid user with phone number non numeric" do
    user = User.new
    user.username = "testuser7"
    user.email = "testemail7@mail.com"
    user.phone = "12a4567890"
    user.password = "password11"
    assert !user.save, "Saved a user with an alphanumeric phone number"
  end

  test "user entry without password" do
    user = User.new
    user.username = "testuser8"
    user.email = "testemail@email.com"
    assert !user.save, "Saved a user without a password"
  end

  test "user entry with short password" do
    user = User.new
    user.username = "testuser9"
    user.email = "testemail@mail.com"
    user.password = "short"
    assert !user.save, "Saved a user with too short of a password"
  end

  test "user entry with password too long" do
    user = User.new
    user.username = "testuser10"
    user.email = "test@mail.com"
    user.password = "thispasswordiswaytoolongforanyone"
    assert !user.save, "Saved a user with too long of a password"
  end
end
