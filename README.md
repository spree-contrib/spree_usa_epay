SpreeUsaEpay
============

*Please see the Versionfile for branches to use with older versions for Spree*

If use use the spree command line tool to install Spree to your project, it will
add spree_usa_epay to your Gemfile with the proper git references.

You can add this gem manually:

  gem 'spree_usa_epay', :git => 'git@github.com:spree/spree_usa_epay.git'


Once installed, the USA Epay Gateway should be available as a provider when defining Payment Methods in Spree.

4. Navigate to /admin/payment_methods and create a new payment method

5. Give it a name and select "Gateway::UsaEpay" as the provider. (see screenshot)

6. Save the payment method and it will refresh with additional options

7. Add your Source Key and Pin. You must create your Source Key with a
   Pin on the USA Epay website. They say the pin is optional, but
   spree_usa_epay requires it.

8. If you are using a Source Key on sandbox.usaepay.com check the "Test Mode" checkbox, otherwise
leave it unchecked to use the production EPay servers.

You can read additional information on Setting up Payment Gateways on http://guides.spreecommerce.com/payment_gateways.html

Example
=======

Example goes here.

Testing
-------

Be sure to add the rspec-rails gem to your Gemfile and then create a dummy test app for the specs to run against.

    $ bundle exec rake test app
    $ bundle exec rspec spec

Copyright (c) 2011 Spree Commerce, released under the New BSD License
