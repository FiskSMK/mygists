# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
MyGists::Application.config.secret_key_base = ENV['SECRET_TOKEN']
#MyGists::Application.config.secret_key_base = '9351be055f6a85c28661b7971a6d1d49503162091fc1a7777d18b7a20bcaa6da32f178af414345f5f9cc1e3ea87188d836c479f316eaf7140aa84e27bde04e6d'
