use Test;

use PDF::Lite;
use PDF::Content::Page;

use GNU::FreeFont-OT;
use GNU::FreeFont-OT::FontList;
use GNU::FreeFont-OT::Classes;
use GNU::FreeFont-OT::Subs;

my $debug = 1;

if not $debug {
    lives-ok {
        print-font-sample :$debug;
    }
}
else {
    say "WARNING: This test MUST pass in order to publish";
}

done-testing;
