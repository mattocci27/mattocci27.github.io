require "rubygems"
require "tmpdir"

require "bundler/setup"
require "jekyll"


# Change your GitHub reponame
GITHUB_REPONAME = "mattocci27/mattocci27.github.io"


desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end


#desc "Generate and publish blog to gh-pages"
#task :publish => [:generate] do
#  Dir.mktmpdir do |tmp|
#    cp_r "_site/.", tmp
#
#    pwd = Dir.pwd
#    Dir.chdir tmp
#
#    system "git init"
#    system "git add ."
#    message = "Site updated at #{Time.now.utc}"
#    system "git commit -m #{message.inspect}"
#    system "git remote add origin git@github.com:#{GITHUB_REPONAME}.git"
#    system "git status"
#    system "git log"
#    system "git branch -a"
#    system "git remote -v"
#    system "pwd"
#   # system "echo ${GITHUB_TOKEN}"
#   # system "git push origin HEAD:dev2 --force"
#
#    Dir.chdir pwd
#  end
#end
