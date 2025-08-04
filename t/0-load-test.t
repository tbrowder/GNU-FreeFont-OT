use Test;

my @modules = <
    GNU::FreeFont-OT
    GNU::FreeFont-OT::Classes
    GNU::FreeFont-OT::Subs
    GNU::FreeFont-OT::Vars
>;

plan @modules.elems;

for @modules -> $m {
    use-ok $m, "Module '$m' used okay";
}
