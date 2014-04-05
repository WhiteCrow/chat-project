## Setup
1. bundle install
2. rake db:setup
3. cd faye_server && bundle exec thin start -C thin.yml (run faye server)
4. cd .. && rails s  
5. Open two different browser and test it

enjoy
