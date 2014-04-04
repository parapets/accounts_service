source 'https://rubygems.org'

def path_or_repo(path,repo)
  if Dir.exists?(path)
    { path: path }
  else
    { git: "https://github.com/#{repo}.git" }
  end
end

gem 'parapets-service', path_or_repo('../parapets-service', 'parapets/parapets-service')
gem 'rails', '4.0.4'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
