use Test;

my $debug = 1;

use GNU::FreeFont-OT;

my $ff  = GNU::FreeFont-OT.new;

isa-ok $ff, GNU::FreeFont-OT;

if $debug {
    say "WARNING: This test MUST pass in order to publish";
    exit;
}

my $last-font;
my @fnames = <t se 1>;
for @fnames.kv -> $i, $fnam {
    my $f = $ff.get-font: $fnam;
    isa-ok $f, PDF::Content::FontObj;

    if $i {
        is $f, $last-font;
    }

    # save for the next comparison
    $last-font = $f;
}

done-testing;
