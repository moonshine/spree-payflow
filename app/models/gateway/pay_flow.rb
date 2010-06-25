class Gateway::PayFlow < Gateway
	preference :login, :string
	preference :password, :string
	preference :partner, :string

  def provider_class
		ActiveMerchant::Billing::PayflowGateway
  end

end
