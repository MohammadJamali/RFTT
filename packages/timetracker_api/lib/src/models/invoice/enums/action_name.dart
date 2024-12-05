enum ActionName {
  create('create'),
  broadcast('broadcastSignedRequest'),
  accept('accept'),
  cancel('cancel'),
  reduceExpectedAmount('reduceExpectedAmount'),
  increaseExpectedAmount('increaseExpectedAmount'),
  addStakeholders('addStakeholders'),
  addExtensionsData('addExtensionsData');

  final String value;
  const ActionName(this.value);
}
