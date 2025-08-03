use Test;

use PDF::Content;

use GNU::FreeFont-OT;

my %fonts = get-loaded-fonts-hash;
my $font  = %fonts<t>;
isa-ok $font, PDF::Content::FontObj;

done-testing;
