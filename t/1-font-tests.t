use Test;

my $debug = 1;

use PDF::Content;

use GNU::FreeFont-OT;

my $ff = GNU::FreeFont-OT.new;

my ($font, $font2);

$font  = $ff.fonts<t>;
$font2 = $ff.fonts<sa>;

isa-ok $font, PDF::Content::FontObj;
isa-ok $font2, PDF::Content::FontObj;

# test the sharing of the same font
if not $debug {
    is $font, $font2;
}
else {
    say "WARNING: This test MUST pass in order to publish";
}

$font   = $ff.fonts<h>;
$font2  = $ff.fonts<se>;
isa-ok $font, PDF::Content::FontObj;
isa-ok $font2, PDF::Content::FontObj;

# test the sharing of the same font
if not $debug {
    is $font, $font2;
}
else {
    say "WARNING: This test MUST pass in order to publish";
}

$font  = $ff.fonts<c>;
$font2 = $ff.fonts<m>;
isa-ok $font, PDF::Content::FontObj;
isa-ok $font2, PDF::Content::FontObj;

# test the sharing of the same font
if not $debug {
    is $font, $font2;
}
else {
    say "WARNING: This test MUST pass in order to publish";
}


done-testing;
