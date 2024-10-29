# Get base image
FROM ruby:3.3.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set working directory 
WORKDIR /app 

# Install bundler 
RUN gem install bundler 

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install 

# Copy the rest of the app files 
COPY . .

# Expose the port 
EXPOSE 3000 

# Set up entrypoint 
ENTRYPOINT ["./entrypoints/entrypoint.sh"]