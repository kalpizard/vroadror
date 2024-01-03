# # frozen_string_literal: true

# Devise.setup do |config|
#   config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
#   require 'devise/orm/active_record'
#   config.case_insensitive_keys = [:email]
#   config.strip_whitespace_keys = [:email]
#   config.skip_session_storage = [:http_auth]
#   config.clean_up_csrf_token_on_authentication = true
#   config.reload_routes = true
#   config.stretches = Rails.env.test? ? 1 : 12
#   config.reconfirmable = true
#   config.confirmation_keys = [:email]
#   config.expire_all_remember_me_on_sign_out = true
#   config.password_length = 6..128
#   config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
#   config.timeout_in = 30.minutes
#   config.lock_strategy = :failed_attempts
#   config.unlock_keys = [:email]
#   config.unlock_strategy = :both
#   config.maximum_attempts = 20
#   config.unlock_in = 1.hour
#   config.last_attempt_warning = true
#   config.reset_password_keys = [:email]
#   config.reset_password_within = 6.hours
#   config.sign_in_after_reset_password = true
#   config.responder.error_status = :unprocessable_entity
#   config.responder.redirect_status = :see_other
#   config.sign_out_via = :delete

#   # Agregado según la solicitud
#   config.navigational_formats = []
# end


# frozen_string_literal: true

Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.clean_up_csrf_token_on_authentication = true
  config.reload_routes = true
  config.stretches = Rails.env.test? ? 1 : 12
  config.reconfirmable = true
  config.confirmation_keys = [:email]
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.timeout_in = 30.minutes
  config.lock_strategy = :failed_attempts
  config.unlock_keys = [:email]
  config.unlock_strategy = :both
  config.maximum_attempts = 20
  config.unlock_in = 1.hour
  config.last_attempt_warning = true
  config.reset_password_keys = [:email]
  config.reset_password_within = 6.hours
  config.sign_in_after_reset_password = true
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other
  config.sign_out_via = :delete

  # Agregado según la solicitud
  config.navigational_formats = []

  # Configuración JWT
  config.jwt do |jwt|
    jwt.secret = ENV['DEVISE_JWT_SECRET_KEY']
    jwt.dispatch_requests = [
      ['POST', %r{^/login$}],
    ]
    jwt.revocation_requests = [
      ['DELETE', %r{^/logout$}]
    ]
    jwt.expiration_time = 5.minutes.to_i
  end
end
