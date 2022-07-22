## DEVISE CONFIGURATION
### Depending on your application's configuration some manual setup may be required:


- Ensure you have defined default url options in your environments files. Here
  is an example of default_url_options appropriate for a development environment
  in config/environments/development.rb:
```ruby
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```
In production, `:host` should be set to the actual host of your application.

#### Required for all applications.

- Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:
```ruby
  root to: "home#index"
```  
#### Not required for API-only Applications

- Ensure you have flash messages in `app/views/layouts/application.html.erb`
  For example:
```ruby
  <p class="notice"><%= notice %></p>
  <p class="alert"><%= alert %></p>
```
#### Not required for API-only Applications

- You can copy Devise views (for customization) to your app by running:
```ruby
  rails g devise:views
```


### Generate new devise model
```ruby
rails g devise MODEL
```