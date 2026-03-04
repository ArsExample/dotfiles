static const char norm_fg[] = "#dce4d1";
static const char norm_bg[] = "#0F130D";
static const char norm_border[] = "#9a9f92";

static const char sel_fg[] = "#dce4d1";
static const char sel_bg[] = "#8B9874";
static const char sel_border[] = "#dce4d1";

static const char urg_fg[] = "#dce4d1";
static const char urg_bg[] = "#768966";
static const char urg_border[] = "#768966";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
