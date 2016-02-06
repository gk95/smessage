DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/smessage.db")

require_relative 'user'

DataMapper.finalize.auto_upgrade!


# Create a test User
if User.count == 0
  @user = User.create(username: "test")
  @user.password = "test"
  @user.save
end
