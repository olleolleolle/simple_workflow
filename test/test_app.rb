require 'rails'

class TestApp < Rails::Application
  config.action_dispatch.cookies_serializer = :json
  config.action_dispatch.key_generator = ActiveSupport::KeyGenerator.new('secret')
  config.logger = Logger.new('log/test.log')
  config.secret_key_base = 'secret key base'
  # config.secret_token = 'secret token'

  Rails.logger = config.logger

  def call(env)
    [200, env, 'app response']
  end
end
