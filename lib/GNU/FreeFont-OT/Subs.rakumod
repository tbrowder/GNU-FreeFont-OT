unit module GNU::FreeFont-OT::Subs;

use PDF::Lite;
use PDF::Content::Page :PageSizes;

use GNU::FreeFont-OT;
use GNU::FreeFont-OT::Classes;
use GNU::FreeFont-OT::FontList;

sub print-font-sample(
    :$debug
) is export {

    my $ff = GNU::FreeFont-OT.new;

    my $f = $ff.get-font: 1;
    my $fn = $f.name;

    say "DEBUG: Face name: $fn";
}
