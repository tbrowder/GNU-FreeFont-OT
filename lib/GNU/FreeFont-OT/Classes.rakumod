use OO::Monitors;

use PDF::Content::FontObj;

unit module GNU::FreeFont-OT::Classes;

use GNU::FreeFont-OT::FontList;

monitor GFF is export {
    has $.id = 'gff';
    
    # Method 'get-font' returns a PDF::Content::FontObj object.
    # If the object already exists, that is returned;
    # otherwise, one is instantiated, added to the
    # collection of class objects, and then returned.
    method get-font(
        $name 
        --> PDF::Content::FontObj
        ) {
        my $code;  #  =  $codes-rx;
        my $alias; #  = $aliases-rx;

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
    }
}

