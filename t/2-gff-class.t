use Test;

use GNU::FreeFont-OT;
use GNU::FreeFont-OT::Classes;

my $gff  = GNU::FreeFont-OT::Classes::GFF.new;
my $gff2 = GFF.new;

isa-ok $gff, GNU::FreeFont-OT::Classes::GFF;
isa-ok $gff, GFF;

isa-ok $gff, GNU::FreeFont-OT::Classes::GFF;
isa-ok $gff2, GFF;

done-testing;
