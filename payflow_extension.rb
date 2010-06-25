# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class PayflowExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/payflow"
  
  def activate
    # Register payflow payment gateway
    Gateway::PayFlow.register

  end
end
