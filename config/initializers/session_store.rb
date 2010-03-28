# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_kniguroo_session',
  :secret => 'df4e2d328b7f224013de3bef6661cc7c01bc5ba648a7c514ed26fa471e46ecc9265679d4958da77cf9e12d793020dcd0683783b506e1760db6e03101c3397d80'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
