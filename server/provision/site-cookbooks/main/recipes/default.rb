bash "setup_git" do
    code <<-EOB
        apt-get -y install git-core
    EOB
end

bash "install_heroku_toolbelt" do
    code <<-EOB
        wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
    EOB
end
