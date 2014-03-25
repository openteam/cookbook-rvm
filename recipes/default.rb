script "Install RVM" do
  interpreter "bash"
  user "root"
  code <<-EOH
  aptitude install -y build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion kg-config libffi-dev libcurl4-dev build-essential libxml2-dev libxslt1-dev libreadline6-dev sudo mc
  su rvmuser -c "curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby"
  aptitude -t squeeze-backports install postgresql-client-9.1 libpq-dev -y
  EOH
end
