# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_prints_session',
  :secret      => 'ab3ebe16eb6b49d41f026f98fb40479f731027394990fe38e49d1e207e5883db54d4c1834d81b3a0b09a5d66db02506441a5336eff1d082ab9b50a94c1cd5ada'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
