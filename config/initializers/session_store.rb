# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_inout_session',
  :secret      => '8a57b8921182c7f21fb5ea0fb0be64ecdd370be2962e06e0496a178f3776f322eb69a3403db8c46338b5f900d5d50d24421c92e8dfd4a14ca3d9c430e876d67c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
