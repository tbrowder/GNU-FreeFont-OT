unit module GNU::FreeFont-OTF::Subs;

use PDF::Lite;
use PDF::Content::Page :PageSizes;

use GNU::FreeFont-OTF;
use GNU::FreeFont-OTF::Classes;
use GNU::FreeFont-OTF::FontList;

sub print-font-sample(
    :$debug
) is export {

    my $ff = GNU::FreeFont-OTF.new;

    my $f = $ff.get-font: 1;
    my $fn = $f.name;

    say "DEBUG: Face name: $fn";
}
