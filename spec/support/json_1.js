casper.start();

casper.wait(500, function() {
  var obj = { key: 'value' };
  var json = JSON.stringify(obj);
  this.echo(json);
});

casper.run(function() {
  this.test.done();
});
