script "install bower" do
	interpreter "bash"
	user "root"
	cwd "/srv/www/arsenal_image_maker/current"
	code <<-EOH
		echo 'installing to #{node[:deploy]['arsenal_image_maker'][:deploy_to]}'
		echo 'installing npm'
		npm install -g bower
		echo 'installing bower dependencies'
		bower install --allow-root --force
	EOH
end