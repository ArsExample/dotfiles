const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#090410", /* black   */
  [1] = "#A75C8B", /* red     */
  [2] = "#9F6784", /* green   */
  [3] = "#CF6187", /* yellow  */
  [4] = "#FA768B", /* blue    */
  [5] = "#FE8E8C", /* magenta */
  [6] = "#FEAE89", /* cyan    */
  [7] = "#f5e4bd", /* white   */

  /* 8 bright colors */
  [8]  = "#ab9f84",  /* black   */
  [9]  = "#A75C8B",  /* red     */
  [10] = "#9F6784", /* green   */
  [11] = "#CF6187", /* yellow  */
  [12] = "#FA768B", /* blue    */
  [13] = "#FE8E8C", /* magenta */
  [14] = "#FEAE89", /* cyan    */
  [15] = "#f5e4bd", /* white   */

  /* special colors */
  [256] = "#090410", /* background */
  [257] = "#f5e4bd", /* foreground */
  [258] = "#f5e4bd",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
