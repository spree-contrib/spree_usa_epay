class Gateway::UsaEpay < Gateway
  preference :source_key, :string
  preference :pin, :string

  def provider_class
    SpreeUsaEpay::Client
  end

  def payment_profiles_supported?
    true
  end

  def create_profile(payment)
    creditcard = payment.source
    if creditcard.gateway_customer_profile_id.nil?
      profile_id = provider.add_customer(payment.amount, creditcard, creditcard.gateway_options(payment))
      creditcard.update_attribute(:gateway_customer_profile_id, profile_id)
    end
  end

end


