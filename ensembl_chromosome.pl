use strict;
use warnings; 
use HTTP::Tiny;
use Data::Dumper;
use Term::ANSIColor;
use Test;
use JSON;

 
my $http = HTTP::Tiny->new();
 
my $server = 'http://rest.ensembl.org';

print "fetching the latest human data from Ensembl release and the Perl API, to convert coordinates on chromosome\n";

print "\n\ncli arguments:\n";
print "base_url: $server\n";
print "asm_one: $ARGV[0]\n";
print "region: $ARGV[1]\n";
print "asm_two: $ARGV[2]\n";
print "request URL: ";
print "$server/map/human/$ARGV[0]/$ARGV[1]/$ARGV[2]?\n";

my $ext = "/map/human/$ARGV[0]/$ARGV[1]/$ARGV[2]?";

my $response = $http->get($server.$ext, {
  headers => { 'Content-type' => 'application/json' }
});
 
die "Failed!\n" unless $response->{success};
 
BEGIN { plan tests => 0 }

if(length $response->{content}) {
  my $hash = decode_json($response->{content});
  local $Data::Dumper::Terse = 1;
  local $Data::Dumper::Indent = 1;
  print Dumper $hash;
  print "\n";
}
