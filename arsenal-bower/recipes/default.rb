script "install bower" do
	interpreter "bash"
	user "root"
	cwd "/srv/www/arsenal_image_maker/current"
	code <<-EOH
		npm install -g bower
		bower install --allow-root --force
	EOH
end