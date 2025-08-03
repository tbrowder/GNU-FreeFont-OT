use Test;

use PDF::Content;

use GNU::FreeFont-OT;

my %fonts = get-loaded-fonts-hash;

my ($font, $font2);

$font  = %fonts<t>;
$font2 = %fonts<sa>;
isa-ok $font, PDF::Content::FontObj;
isa-ok $font2, PDF::Content::FontObj;
#is $font, $font2;

$font   = %fonts<h>;
$font2  = %fonts<se>;
isa-ok $font, PDF::Content::FontObj;
isa-ok $font2, PDF::Content::FontObj;
#is $font, $font2;

$font  = %fonts<c>;
$font2 = %fonts<m>;
isa-ok $font, PDF::Content::FontObj;
isa-ok $font2, PDF::Content::FontObj;
#is $font, $font2;




done-testing;
