use OO::Monitors;

use MacOS::NativeLib "*";
use PDF::Font::Loader::HarfBuzz;
use PDF::Font::Loader :load-font;
use PDF::Content;
use PDF::Content::FontObj;

unit monitor GNU::FreeFont-OT;

use GNU::FreeFont-OT::FontList;
use GNU::FreeFont-OT::FontSources;

has %.loaded-fonts;
has %.font-file-paths;

submethod TWEAK {
    my $debug = 0;
    %!font-file-paths = get-font-file-paths-hash :$debug;
}

method get-font(
    $name,
    :$debug,
    --> PDF::Content::FontObj
) {

    if 1 or $debug {
        say "DEBUG: Input \$name: '$name'";
        say "       \$codes-rx  : '$codes-rx'";
        say "       \$aliases   : '$aliases-rx'";
       # exit;
    }

    my $code;  #  member of $codes-rx;
    my $alias; #  member of $aliases-rx;

    # examples of valid names:
    #   codes
    #     t,  cb
    #   aliases
    #     se, mb
    #     1..12
    if $name ~~ / (<$codes-rx>) / {
        $code = ~$0;
    }
    elsif $name ~~ / [$aliases-rx] / {
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
