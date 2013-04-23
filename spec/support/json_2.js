casper.start();

casper.wait(500, function() {
  this.test.fail("I'm a failure. :(");
  this.echo(JSON.stringify({ error: 'Failed!'}));
});

casper.run(function() {
  this.test.done();
});
