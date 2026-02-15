Task 2 

Created Docker network:  virtual network for containers to communicate
Launched MySQL container

Connected to rail_network
Set environment variables: MYSQL_ROOT_PASSWORD, MYSQL_DATABASE
Port 3306 internal only (not exposed to host)


Fixed database.yml configuration

Changed hardcoded username/password to use environment variables
Set host: db for Docker networking
Removed socket:


Rebuilt Rails image after fixing database.yml
Launched Rails container

Connected to rail_network
Exposed port 8080 to host
Set environment variables: DATABASE_HOST, DATABASE_USER, DATABASE_PASSWORD, RAILS_ENV, SECRET_KEY_BASE
Added RAILS_SERVE_STATIC_FILES=true (so CSS/JS loads in production)


Created and migrated database

Ran rake db:create db:migrate to create posts table and other schema
