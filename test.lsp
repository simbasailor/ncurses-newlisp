

(load "curses.lsp")

(curses:init)
(curses:wmove curses:stdscr 5 5)
(curses:printw "test curses lines:%d cols:%d"
               (curses:lines)
               (curses:cols))
(curses:wrefresh curses:stdscr)
(sleep 10000)

(curses:wmove curses:stdscr 7 7)
(curses:printw "2test curses lines:%d cols:%d"
               (curses:lines)
               (curses:cols))
(curses:wrefresh curses:stdscr)
(sleep 10000)
(curses:endwin)

(exit)


