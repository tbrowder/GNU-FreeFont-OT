use Test;

my @modules = <
    GNU::FreeFont-OT
    GNU::FreeFont-OT::FontList
    GNU::FreeFont-OT::Classes
    GNU::FreeFont-OT::Subs
    GNU::FreeFont-OT::Vars
    GNU::FreeFont-OT::FPaths
>;

plan @modules.elems;

for @modules -> $m {
    use-ok $m, "Module '$m' used okay";
}
