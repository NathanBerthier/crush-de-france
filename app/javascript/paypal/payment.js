const paiment = () => {
  paypal.Buttons({
    createSubscription: function(data, actions) {
      return actions.subscription.create({
        'plan_id': 'P-4UD80709042926807MFNR4XA'
      });
    },
    onApprove: function(data, actions) {
      alert('You have successfully created subscription ' + data.subscriptionID);
    }
  }).render('#paypal-button-container');
}

export { paiment };
