casper.start();

casper.wait(500, function() {
  this.test.fail("I'm a failure. :(");
});

casper.run(function() {
  this.test.done();
});
