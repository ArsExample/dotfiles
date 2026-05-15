static const char norm_fg[] = "#f5e4bd";
static const char norm_bg[] = "#090410";
static const char norm_border[] = "#ab9f84";

static const char sel_fg[] = "#f5e4bd";
static const char sel_bg[] = "#9F6784";
static const char sel_border[] = "#f5e4bd";

static const char urg_fg[] = "#f5e4bd";
static const char urg_bg[] = "#A75C8B";
static const char urg_border[] = "#A75C8B";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
