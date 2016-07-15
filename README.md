# Backend - ORM Eagerness: Practice Repo

## Setup

1. If necessary, register for a Cloud9 IDE account. (http://c9.io/)
2. Sign into Cloud9 IDE. Create a new workspace.
    1. Name the workspace in the `Workspace name` field. For example: `backend_orm_eager`. Add a description if you like.
    2. Set the repo in the `Clone from Git or Mercurial URL` field to `git@github.com:WomenWhoCode/backend_orm_eager.git`.
    3. Click `Create Workspace`.
3. If necessary, open the workspace.
4. Prepare the Cloud9 virtual machine.
    1. `sudo service postgresql start`
    2. `psql -c 'CREATE DATABASE db;'`
    2. `bundle install`
    3. `rake db:migrate`

## Development

1. Ensure the database server is running.
    * `sudo service postgresql status` should report 'online' and not 'down'
    * `sudo service postgresql start` to start if not running
2. Run `rake test`. Make the tests pass!
