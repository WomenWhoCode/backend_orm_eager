# Backend - ORM Eagerness: Practice Repo

## Setup

1. If necessary, register for a Cloud9 IDE account. (http://c9.io/)
2. Sign into Cloud9 IDE. Create a new workspace.
    1. Name the workspace in the `Workspace name` field. For example: `backend_orm_eager`. Add a description if you like.
    2. Set the repo in the `Clone from Git or Mercurial URL` field to `https://github.com/WomenWhoCode/backend_orm_eager.git`.
    3. Click `Create Workspace`.
3. If necessary, open the workspace.
4. Prepare the Cloud9 virtual machine.
    1. `sudo service postgresql start`
    2. `psql -c "CREATE DATABASE db WITH template=template0 encoding='UTF-8';"`
    3. `bundle install`
    4. `rake db:migrate`
    5. Put the following in `config/secrets.yml`. Fill in `<secret>` with the output of `rake secret`.
             
            development:
              secret_key_base: <secret>

            test:
              secret_key_base: <secret>

## Development

1. Ensure the database server is running.
    * `sudo service postgresql status` should report 'online' and not 'down'
    * `sudo service postgresql start` to start if not running
2. Run `rake test`. Make the tests pass!
