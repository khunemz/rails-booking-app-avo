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

### For image uploader 
```ruby
rails active_storage:install
```

### Generate new devise model
```ruby
rails g devise MODEL
```

### Avo App template
```ruby
rails app:template LOCATION='https://avohq.io/app-template'
```


### Avo Generate Resources
```ruby
rails g model location name:string description:string
# location.rb modified with this attribute  has_one_attached :photo
rails db:migrate
rails g avo:resource location
```


### image upload glib
for macOS
```ruby
brew install vips
gem install ruby-vips
```

### Avo generate Dashboard
```ruby
rails g avo:dashboard Dashy

# generate booking count
rails g avo:card:metric BookingsCount
rails g avo:card:metric BookedHours  
rails g avo:card:chartkick BookingsOverTime
```