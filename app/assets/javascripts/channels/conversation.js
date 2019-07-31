App.conversation = App.cable.subscriptions.create("ConversationChannel", {
  connected: function() {},
  disconnected: function() {},
  received: function(data) {},
  speak: function() {
    return this.perform('speak');
  }
});
