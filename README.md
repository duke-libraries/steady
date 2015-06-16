# Steady

Steady converts CSV into EAD XML. This is a fork of Jason Ronallo's Steady ([https://github.com/jronallo/steady](https://github.com/jronallo/steady)) customized to meet local needs at Duke University Libraries.

## Configuring your computer

### Set up Heroku

1. Install Heroku Toolbelt: https://toolbelt.heroku.com/

2. If you haven't already, log in to your Heroku account and follow the prompts to create a new SSH public key.
    ```
    $ heroku login
    ```

### Clone repositories and setup development environment

1. Clone both stead and steady to your computer:
    ```
    $ git clone https://github.com/duke-libraries/stead.git
    $ git clone https://github.com/duke-libraries/steady.git
    ```

2. Add heroku as a git remote to steady. From within the steady directory:
    ```
    $ git remote add heroku https://git.heroku.com/sleepy-ocean-6616.git
    ```

3. Specify that steady should use the copy of stead on your computer during development.
In the steady directory on your computer run this command, with the path to stead on your computer:
    ```
    $ bundle config local.stead /path/to/stead
    ```

4. Check that you can run the Steady application locally. From within the steady directory on your computer, run this command:
    ```
    $ rails s
    ```

5. Try in a browser to access: [http://localhost:3000/](http://localhost:3000/)

6. To kill it type control-c

## Making changes to stead

1. Edit, save, and test your changes to stead.

2. From your stead working directory commit changes to the code repository.
    ```
    $ git add .
    $ git commit -m 'your commit message'
    $ git push origin master
    ```

3. You will need to then update the copy of stead used by steady. This just updates the Gemfile.lock so that Heroku will know to pick up the latest copy of stead from our repository. From the steady directory:
    ```
    $ bundle update --source stead
    ```

4. Commit the new Gemfile.lock to the steady repository. From the steady directory:
    ```
    $ git add .
    $ git commit -m 'your commit message'
    $ git push origin master
    ```

## Deploy changes to Heroku

1. Push to Heroku the steady application using your updated stead gem.
    ```
    $ git push heroku master
    ```

2. Access the application in a browser: [https://sleepy-ocean-6616.herokuapp.com/](https://sleepy-ocean-6616.herokuapp.com/)

### Syncing our fork with Jason Ronallo's project

```
$ git fetch upstream
$ git checkout master
$ git merge upstream/master
```
