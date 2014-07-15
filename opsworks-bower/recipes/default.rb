package "ruby-sass" do
end

cookbook_file "/tmp/install-bower.sh" do
  source "install-bower.sh"
  mode 0755
end

execute "install bower" do
  command "bash /tmp/install-bower.sh"
end