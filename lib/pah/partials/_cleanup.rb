puts "Commiting new rails app ... ".magenta

git :add => '.'
git :commit => "-aqm 'Commit new rails app.'"

puts "Removing unnecessary files ... ".magenta

remove_file "README"
remove_file "app/views/layouts/application.html.erb"

inside "public" do
	remove_file "favicon.ico"
	remove_file "robots.txt"
end

git :add => '.'
git :commit => "-aqm 'Removed unnecessary files left over from initial app generation.'"
puts "\n"