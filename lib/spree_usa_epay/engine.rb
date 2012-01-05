module SpreeUsaEpay
  class Engine < Rails::Engine
    engine_name 'spree_usa_epay'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "spree.usa_epay.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::Gateway::UsaEpay
    end

  end
end
