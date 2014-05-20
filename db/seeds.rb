admin_user = User.find_by_email("admin@fulflmnt.com")
if admin_user.blank?
  user = User.new(:first_name => "Admin", :last_name => "User", :email => "admin@tracker.com", :password => "admin123", :password_confirmation => "admin123")
  #user.skip_confirmation!
  user.save!
  puts "Fulflmnt Admin User Created.\nemail: #{user.email}\nPassword: admin123"
else
  puts "Fulflmnt Admin user already exist."
end