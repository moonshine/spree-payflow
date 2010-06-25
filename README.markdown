= Payflow

This extension allows payments to be processed via the Payflow gateway.

## Setup

To get started you need to define a new payment method using the Spree admin interface.
Select "Gateway::Payflow" as the provide, complete the other details and save. After the
record is saved additional fields are displayed on the form that will need to be completed, i.e.

Server: test or live
Password: password you use to sign into the payflow manager
Login: marchant login you use to sign into the payflow manager
Partner: partner value sent to you in the email to confirm your payflow account setup

## Information

### Test Payflow account

To set up a test Payflow account follow these instructions:

To set up a Payflow account for testing, you would walk through the sign up process at
https://www.paypal.com/us/cgi-bin/webscr?cmd=_payflow-get-started-outside&from_ppip=payflow_pro as
if you were signing up for a live Payflow account. Once you get to the section in the sign up process
where it is asking for the billing information, just cancel out of the process. This creates a test
account for you at this point, which you can access now by signing into manager.paypal.com with the
login and password that you created. You will also need to supply the vendor sent to you in the
sing up confirmation email. You will not use the sandbox for a test Payflow account.

### Test transactions

In my testing I could not see the test transactions I created via the payflow manager at
manager.paypal.com, I could however access them via the "Search Transactions" feature by entering
in the transaction ID.

### Spree checkout process

For credit card payments the confirm step is not displayed so the final page in the checkout
process is the payment page. The reason for this is explained in more detail here:

http://groups.google.com/group/spree-user/browse_thread/thread/2d2a69abb311b0b9/3b82c3a00228ccd5?lnk=gst&q=confirm#3b82c3a00228ccd5

I've included the payments partial in this extension where I've renamed the button from
"save & continue" to "Confirm & complete order". This partial may need further modification
to display a page more like the normal confirm page providing more details about the order.

### Payflow Documentation

Payflow documentation is availabe from here:

https://cms.paypal.com/us/cgi-bin/?cmd=_render-content&content_ID=developer/howto_gateway_payflowpro

I found the Payflow Developers Guide useful and this can be found here:

https://cms.paypal.com/cms_content/US/en_US/files/developer/PP_PayflowPro_Guide.pdf


