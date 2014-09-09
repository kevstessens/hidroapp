OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '530169703750758', '92803566b5e32d816d73b4269bc055d6'
end