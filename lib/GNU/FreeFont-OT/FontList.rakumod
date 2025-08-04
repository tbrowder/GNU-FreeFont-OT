unit module GNU::FreeFont-OT::FontList;

constant %Fonts is export =
    # These are the fonts from GNU FreeFont
    #   with their primary keys (from their Adobe heritage)
    FreeSerif            => "t",
    FreeSerif-Italic     => "ti",  # also to
    FreeSerif-Bold       => "tb",
    FreeSerif-BoldItalic => "tbi", # also tbo, tob, tib

    FreeSans             => "h",
    FreeSans-Oblique     => "ho",  # also hi
    FreeSans-Bold        => "hb",
    FreeSans-BoldOblique => "hbo", # also hbi, hob, hib

    FreeMono             => "c",
    FreeMono-Oblique     => "co",  # also ci
    FreeMono-Bold        => "cb",
    FreeMono-BoldOblique => "cbo", # also cbi, cob, cib
;

# invert the hash and have short names (aliases) as keys
our %FontAliases is export = %Fonts.invert;

# add some extra keys
# Courier/FreeMono
%FontAliases<ci>  = "FreeMono-Oblique";
%FontAliases<cbi> = "FreeMono-BoldOblique";
%FontAliases<cob> = "FreeMono-BoldOblique";
%FontAliases<cib> = "FreeMono-BoldOblique";
%FontAliases<m>   = "FreeMono";
%FontAliases<mo>  = "FreeMono-Oblique";
%FontAliases<mi>  = "FreeMono-Oblique";
%FontAliases<mb>  = "FreeMono-Bold";
%FontAliases<mbi> = "FreeMono-BoldOblique";
%FontAliases<mib> = "FreeMono-BoldOblique";
%FontAliases<mob> = "FreeMono-BoldOblique";
%FontAliases<mbo> = "FreeMono-BoldOblique";

# Helvetica/FreeSans
%FontAliases<hi>   = "FreeSans-Oblique";
%FontAliases<hbi>  = "FreeSans-BoldOblique";
%FontAliases<hob>  = "FreeSans-BoldOblique";
%FontAliases<hib>  = "FreeSans-BoldOblique";
%FontAliases<sa>   = "FreeSans";
%FontAliases<sao>  = "FreeSans-Oblique";
%FontAliases<sai>  = "FreeSans-Oblique";
%FontAliases<sab>  = "FreeSans-Bold";
%FontAliases<sabi> = "FreeSans-BoldOblique";
%FontAliases<sabo> = "FreeSans-BoldOblique";
%FontAliases<saob> = "FreeSans-BoldOblique";
%FontAliases<saib> = "FreeSans-BoldOblique";

# Time-Roman/FreeSerif
%FontAliases<to>   = "FreeSerif-Italic";
%FontAliases<tbo>  = "FreeSerif-BoldItalic";
%FontAliases<tob>  = "FreeSerif-BoldItalic";
%FontAliases<tib>  = "FreeSerif-BoldItalic";
%FontAliases<se>   = "FreeSerif";
%FontAliases<seo>  = "FreeSerif-Italic";
%FontAliases<sei>  = "FreeSerif-Italic";
%FontAliases<seb>  = "FreeSerif-Bold";
%FontAliases<sebi> = "FreeSerif-BoldItalic";
%FontAliases<sebo> = "FreeSerif-BoldItalic";
%FontAliases<seob> = "FreeSerif-BoldItalic";
%FontAliases<seib> = "FreeSerif-BoldItalic";

