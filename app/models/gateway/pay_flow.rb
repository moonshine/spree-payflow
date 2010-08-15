class Gateway::PayFlow < Gateway
  preference :login, :string
  preference :password, :string
  preference :partner, :string

  def provider_class
    ActiveMerchant::Billing::PayflowGateway
  end

  def payment_profiles_supported?
    true
  end
  
  def create_profile(payment)
    true
  end

  def capture(authorization, ignored_creditcard, options)
    provider.capture((authorization.amount * 100).round, authorization.response_code, options)
  end
  
  def void(response_code, ignored_creditcard, options)
    provider.void(response_code, options)
  end

  def credit(amount, ignored_creditcard, response_code, options)
    provider.credit(amount, response_code, options)
  end


end
