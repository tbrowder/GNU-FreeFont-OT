use OO::Monitors;

use MacOS::NativeLib "*";
use PDF::Font::Loader::HarfBuzz;
use PDF::Font::Loader :load-font;
use PDF::Content;
use PDF::Content::FontObj;

unit monitor  GNU::FreeFont-OT;

use GNU::FreeFont-OT::FontList;
use GNU::FreeFont-OT::FontSources;

has %.active-fonts;

submethod TWEAK {
    #%!fonts = get-loaded-fonts-hash :$debug;
}

method get-font(
    Str:D $name,
    :$debug,
    --> PDF::Content::FontObj
) {

    if $debug {
        say "DEBUG: Input \$name: '$name'";
        say "       \$codes-rx  : '$codes-rx'";
        say "       \$aliases   : '$aliases-rx'";
        exit;
    }

    my $code;  #  member of $codes-rx;
    my $alias; #  member of $aliases-rx;

    # examples of valid names:
    #   codes
    #     t,  cb
    #   aliases
    #     se, mb
    #     1..12
    if $name ~~ /$codes-rx/ {
        $code = $name;
    }
    elsif $name ~~ /$aliases-rx/ {
        $alias = $name;
    }
    else {
        say qq:to/HERE/;
        FATAL: Input \$name '$name' is not recognized.
               Exiting...
        HERE
        exit(1);
    }
    # get the code directly OR from the alias input
    # if the font is already loaded 
    #   return it
    # else
    # load the font, then return it 
}
