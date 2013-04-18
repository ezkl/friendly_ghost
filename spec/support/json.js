casper.start();

casper.wait(500, function() {
  var obj = { key: 'value' };
  var json = JSON.stringify(obj);
  this.echo(json);
});

casper.run(function() {
  if(this.test.getFailures().length >= 1) {
    this.exit(-1);
  } else {
    this.exit(0);
  }
});
