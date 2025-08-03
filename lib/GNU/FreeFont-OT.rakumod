unit module GNU::FreeFont-OT;

use MacOS::NativeLib "*";

use PDF::Font::Loader::HarfBuzz;
use PDF::Font::Loader :load-font;
use PDF::Content;
use PDF::Content::FontObj;

use QueryOS;

my $os = OS.new;

my $Ld = "/usr/share/fonts/opentype/freefont";
my $Md = "/opt/homebrew/Caskroom/font-freefont/20120503/freefont-20120503";
my $Wd = "/usr/share/fonts/opentype/freefont";

sub get-loaded-fonts-hash(:$debug --> Hash) is export {
    my $fontdir;
    if $os.is-linux {
        $fontdir = $Ld;
    }
    elsif $os.is-macos {
        $fontdir = $Md;
    }
    elsif $os.is-windows {
        $fontdir = $Wd;
    }
    else {
        die "FATAL: Unable to determine your operating system (OS)";
    }

    # from the GNU FreeFont collection
    # only OpenType fonts wanted
    
    # Use codes reflecting the Adobe parentage of its class PostScript fonts
    # I grew up with in the PS days:
    # 
    # Times-Roman
    my $fft   = "$fontdir/FreeSerif.otf";
    my $fftb  = "$fontdir/FreeSerifBold.otf";
    my $ffti  = "$fontdir/FreeSerifItalic.otf";
    my $fftbi = "$fontdir/FreeSerifBoldItalic.otf";

    # Helvetica
    my $ffh   = "$fontdir/FreeSans.otf";
    my $ffhb  = "$fontdir/FreeSansBold.otf";
    my $ffho  = "$fontdir/FreeSansOblique.otf";
    my $ffhbo = "$fontdir/FreeSansBoldOblique.otf";

   # Courier
    my $ffc   = "$fontdir/FreeMono.otf";
    my $ffcb  = "$fontdir/FreeMonoBold.otf";
    my $ffco  = "$fontdir/FreeMonoOblique.otf";
    my $ffcbo = "$fontdir/FreeMonoBoldOblique.otf";

    my %fonts;

    # Times-Roman
    %fonts<t>   = load-font :file($fft); # deb 12, :subset;
    %fonts<tb>  = load-font :file($fftb); # deb 12, :subset;
    %fonts<ti>  = load-font :file($ffti); # deb 12, :subset;
    %fonts<tbi> = load-font :file($fftbi); # deb 12, :subset;

    # Helvetica
    %fonts<h>   = load-font :file($ffh); # deb 12, :subset;
    %fonts<hb>  = load-font :file($ffhb); # deb 12, :subset;
    %fonts<ho>  = load-font :file($ffho); # deb 12, :subset;
    %fonts<hbo> = load-font :file($ffhbo); # deb 12, :subset;

   # Courier
    %fonts<c>   = load-font :file($ffc); # deb 12, :subset;
    %fonts<cb>  = load-font :file($ffcb); # deb 12, :subset;
    %fonts<co>  = load-font :file($ffco); # deb 12, :subset;
    %fonts<cbo> = load-font :file($ffcbo); # deb 12, :subset;

    # "aliases" for the real names
    %fonts<e>   = %fonts<t>;
    %fonts<eb>  = %fonts<tb>;
    %fonts<ei>  = %fonts<ti>;
    %fonts<ebi> = %fonts<tbi>;

    %fonts<a>   = %fonts<h>;
    %fonts<ab>  = %fonts<hb>;
    %fonts<ao>  = %fonts<ho>;
    %fonts<abo> = %fonts<hbo>;

    %fonts<m>   = %fonts<c>;
    %fonts<mb>  = %fonts<cb>;
    %fonts<mo>  = %fonts<co>;
    %fonts<mbo> = %fonts<cbo>;


    %fonts;
}
