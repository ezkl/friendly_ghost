casper.start();

casper.wait(500, function() {
  this.test.fail("I'm a failure. :(");
  this.echo(JSON.stringify({ error: 'Failed!'}));
});

casper.run(function() {
  if(this.test.getFailures().length >= 1) {
    this.exit(-1);
  } else {
    this.exit(0);
  }
});
