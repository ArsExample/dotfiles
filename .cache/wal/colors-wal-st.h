const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0F130D", /* black   */
  [1] = "#768966", /* red     */
  [2] = "#8B9874", /* green   */
  [3] = "#AEBC7B", /* yellow  */
  [4] = "#9FAF8D", /* blue    */
  [5] = "#C2BDA6", /* magenta */
  [6] = "#B7CAA1", /* cyan    */
  [7] = "#dce4d1", /* white   */

  /* 8 bright colors */
  [8]  = "#9a9f92",  /* black   */
  [9]  = "#768966",  /* red     */
  [10] = "#8B9874", /* green   */
  [11] = "#AEBC7B", /* yellow  */
  [12] = "#9FAF8D", /* blue    */
  [13] = "#C2BDA6", /* magenta */
  [14] = "#B7CAA1", /* cyan    */
  [15] = "#dce4d1", /* white   */

  /* special colors */
  [256] = "#0F130D", /* background */
  [257] = "#dce4d1", /* foreground */
  [258] = "#dce4d1",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
