SpreeUsaEpay
============

*If you are using Spree 0.60.x please use the 0-60-stable branch*

To use the USA Epay Gateway with Spree, you will have to include the extension which is available to Beta
Users on Github. Once you have access to the repository, you should create local copy within your application
for easy deployment

1. git clone https://github.com/spree/spree_usa_epay
2. add to your gem file:

gem 'spree_usa_epay', :path => './spree_usa_epay'

3. run 'bundle'

Now, the USA Epay Gateway should be available as a provider when defining Payment Methods in Spree.

4. Navigate to /admin/payment_methods and create a new payment method

5. Give it a name and select "Gateway::UsaEpay" as the provider. (see screenshot)

6. Save the payment method and it will refresh with additional options

7. Add your Source Key and Pin

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

Copyright (c) 2011 [name of extension creator], released under the New BSD License
