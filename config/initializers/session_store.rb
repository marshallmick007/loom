# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_loom_session',
  :secret      => '2e460d623e749567a2c99b5a7873c838f26bde4a56fc926ca1caef6ee6473b22ae1254b26810d2ba5cadd0db4d9d8106a30c84fb2dbd3d5aec0e2b07e604fd36'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
