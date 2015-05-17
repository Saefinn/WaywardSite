##Cloning The Project



**Download Rails Installer - Ruby 2.0**
*http://railsinstaller.org/en  

**Download Node.js**
*https://nodejs.org/

**Clone Git**
*git clone https://github.com/Saefinn/WaywardStarSite.git-

**Install RubyGems**
*https://rubygems.org/pages/download
*Download Zip
*Extra Zip
*Navigate to directory via command prompt
*ruby setup.rb

**Install The Gems**
*gem install rake -v '10.4.2'
bundle

**Setup Server & Data**
*rake db:migrate
*rails server




##DEPLOYMENT##

*Download Heroku's Toolbelt: https://toolbelt.heroku.com/windows

*Add a git remote to the heroku server and do a git push to it. 

**Commandline - first run**

*heroku run bundle
*heroku run db:migrate

**For each update, for new migrations** 

*heroku run db:migrate:status
*heroku run db:migrate:up VERSION:[version]



##Additional Gems Used##

**[Simple Form**

https://github.com/plataformatec/simple_form


gem 'simple_form'


**Devise**

https://github.com/plataformatec/devise


gem 'devise'


**Sqlite3 & Postgre**

SQLite3 -> https://www.sqlite.org/

PostgreSQL -> http://www.postgresql.org/


group :development, :test do

  gem 'sqlite3'

end


group :production do

  gem "pg"

end



##DEVELOPMENT TOOLS##




**Host/Production**

Heroku

https://heroku.com/


**IDE**

RubyMine 7.1

https://www.jetbrains.com/ruby/

KomodoEdit (Free Alternative)

http://komodoide.com/komodo-edit/


##Software versions##


Rails 4.2.1 -> http://rubyonrails.org/download/

Ruby 2.0 -> https://www.ruby-lang.org/en/downloads/




##Structure##

*Home --> Journals (Replace with News) --> "news" view, model & controller

*Pages --> For Viewing Different Rules --> "Pages" view & controller

*Journals --> Stories written by user --> "status" view, controller & model

*Characters --> Character profiles for each user --> "character" view, controller & model

*Items --> Item List for Each Character --> "item" view, controller & model

*Members --> Profiles for each user --> "profile" view and controller, "user" model








