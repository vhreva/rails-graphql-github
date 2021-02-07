# Rails GraphQl GitHub

##### 1. Check out the repository

```bash
git clone https://github.com/vhreva/rails-graphql-github
```
Go to the project directory.

```bash
cd rails-graphql-github/
```

##### 2. Create access token and setup the project.

Run the following commands to set all dependencies and install missing gems.

```ruby
bundle install
```

Install webpacker.

```ruby
rails webpacker:install
```
Now you need a generate [GitHub API access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use) to make GraphQL API requests. 

This token should be set as a `GITHUB_ACCESS_TOKEN` environment as configured in [.env.development]

##### 4. Start the Rails server

You can start the rails server using this command.

```ruby
rails s
```

And now you can visit the site with the URL [http://localhost:3000/](http://localhost:3000/).