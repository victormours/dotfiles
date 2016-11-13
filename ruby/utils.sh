function open_gem {
  gem_name=$1
  (cd `bundle show $gem_name` && mvim .)
}
alias og=open_gem

function remote_console {
  environment=$1
  bundle exec cap $environment remote:console
}
alias rc=remote_console

function specs_for {
  #TODO: cleanup
  bundle exec rspec `find spec/ -path spec/factories -prune -o -name '*$1*'`
}


function new_gem {
  gem_name=$1
  mkdir $gem_name

  mkdir $gem_name/lib
  mkdir $gem_name/bin
  mkdir $gem_name/spec

  echo 2.2.2 > $gem_name/.ruby-version

  echo 'source "https://rubygems.org"' > $gem_name/Gemfile
  echo gemspec >> $gem_name/Gemfile

  echo 'Gem::Specification.new do |gem|' > $gem_name/$gem_name.gemspec
  echo "  gem.name = '$gem_name'" >>  $gem_name/$gem_name.gemspec
  echo "  gem.version = '0.0.0'" >>  $gem_name/$gem_name.gemspec
  echo end >>  $gem_name/$gem_name.gemspec
}

function new_ruby_bin {
  filename=$1
  echo "#!/usr/bin/env ruby" > $filename
  chmod u+x $filename
}
