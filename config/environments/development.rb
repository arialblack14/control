Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # if Rails.root.join('tmp/caching-dev.txt').exist?
  config.action_controller.perform_caching = true
  #
  #   config.cache_store = :memory_store
  #   config.public_file_server.headers = {
  #     'Cache-Control' => 'public, max-age=172800'
  #   }
  # else
  #   config.action_controller.perform_caching = false
  #
  #  config.cache_store = :null_store
  # end

  # Don't care if the mailer can't send.

  config.active_job.queue_adapter = :sidekiq

  config.action_mailer.perform_deliveries = true

  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.default_url_options = { host: 'localhost:3000'  }

  config.action_mailer.default_options = { from: "sistemas@pdanortedesantander.com"}

  config.action_mailer.delivery_method = :sendmail
  config.action_mailer.sendmail_settings = {
    :address => "smtp.mailgun.org",
    :port => "587",
    :user_name => "sistemas@mail.silumin.co",
    :password => "375f6ec05424c161d7afabde4db2ee56-7caa9475-f285932c",
    :authentication => "plain",
    :domain => 'mail.silumin.co',
    :enable_starttls_auto => true
  }
  # config.action_mailer.delivery_method = :mailgun
  # config.action_mailer.mailgun_settings = {
  #   api_key: '975012b936f0e7ca54e79a0ee0c34b1f-1b65790d-cf5067b1',
  #   domain: 'mail.silumin.co',
  # }
  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker



  config.after_initialize do
    Bullet.enable = true
    Bullet.add_footer = true
  end
end