const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0E172E", /* black   */
  [1] = "#9B4F6C", /* red     */
  [2] = "#EA656E", /* green   */
  [3] = "#B78E75", /* yellow  */
  [4] = "#F98F7A", /* blue    */
  [5] = "#70608E", /* magenta */
  [6] = "#916B96", /* cyan    */
  [7] = "#f4c5ba", /* white   */

  /* 8 bright colors */
  [8]  = "#aa8982",  /* black   */
  [9]  = "#9B4F6C",  /* red     */
  [10] = "#EA656E", /* green   */
  [11] = "#B78E75", /* yellow  */
  [12] = "#F98F7A", /* blue    */
  [13] = "#70608E", /* magenta */
  [14] = "#916B96", /* cyan    */
  [15] = "#f4c5ba", /* white   */

  /* special colors */
  [256] = "#0E172E", /* background */
  [257] = "#f4c5ba", /* foreground */
  [258] = "#f4c5ba",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
