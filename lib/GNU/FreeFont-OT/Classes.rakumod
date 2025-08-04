use OO::Monitors;

unit module GNU::FreeFont-OT::Classes;

use PDF::Content::FontObj;

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
        my $key;
        my $alias;
        my $number;

        # examples of valid names:
        #   t,  cb
        # aliases
        #   se, mb
        # numbers
        #   1..12

        #...
        if $name ~~ /^ .../ {
            $key = $alias;
        }
        else {
            say qq:to/HERE/;
            FATAL: ...
                   Exiting ..,
            HERE
            exit(1);
        }

        # if we have the font return it
        if %!fkeys{}:exists {
        }
        elsif %!fkeys2{}:exists {
        }
        else {
        }
    }
}

