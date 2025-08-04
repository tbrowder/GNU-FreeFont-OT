use Test;

use GNU::FreeFont-OT::FontList;

my $debug = 1;

# check for correct keys
# primary codes:
# the hash must contain all these keys as VALUES and no more
my @pcodes = <
    t ti tb tbi   
    h ho hb hbo 
    c co cb cbo
>;
my %fi = %Fonts.invert; # codes (values) become keys
my @fc;
for @pcodes -> $code {
    if %fi{$code}:exists {
        # good, save it
        @fc.push: $code;   
    }
    else {
        say "ERROR: primary code '$code' not found" if $debug;
    }
}
# set comparison
cmp-ok Set(@pcodes), 'cmp', Set(@fc), "primary code sets are equal";

=finish

# now test the aliases
# aliases should NOT have any of the primary codes as values
# alias keys MUST be a member of the %Fonts keys (which are the 
#   recognized font faces)
 
my %F  = %Fonts;       # font-name => code
my %Fa = %FontAliases; # font-name => alias
my @fa = [];
for %Fa.kv -> $fname, $alias {
   @fa.push: $alias;
}


done-testing;
