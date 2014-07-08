script "install bower" do
	interpreter "bash"
	user "root"
	cwd node[:deploy]['arsenal_image_maker'][:deploy_to]
	code <<-EOH
		npm install -g bower
		bower install --allow-root --force
	EOH
end