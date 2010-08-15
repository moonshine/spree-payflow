# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class PayflowExtension < Spree::Extension
  version "1.0"
  description "Paypal Payflow Gateway"
  url "http://github.com/moonshine/spree-payflow"

  # Register payflow payment gateway
  def activate
    begin
      Gateway::PayFlow.register
    rescue Exception => e
      $stderr.puts "Error registering gateway #{Gateway::PayFlow}: #{e}"
    end
  end


end
