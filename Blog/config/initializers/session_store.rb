# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Blog_session',
  :secret      => '69e76cad4aef0bb321e9a1d27430a6c104e6fd45de12b30e809161aafdc79ea4dee635300cd0da23900d3cfaf4701f0359790e03eb47d3eaf3c207086510a562'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
