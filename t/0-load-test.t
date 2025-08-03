use Test;

my @modules = <
    GNU::FreeFont-OT
>;

plan @modules.elems;

for @modules -> $m {
    use-ok $m, "Module '$m' used okay";
}
