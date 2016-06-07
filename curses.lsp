
(context 'curses)

;; (set 'NCURSES "libncurses.so")
(set 'NCURSES "libncurses.so.5.9")

(import NCURSES "initscr" "void*" "void")
(import NCURSES "endwin" "int" "void")
(import NCURSES "clear" "int" "void")
(import NCURSES "cbreak" "int" "void")
(import NCURSES "nocbreak" "int" "void")
(import NCURSES "echo" "int" "void")
(import NCURSES "noecho" "int" "void")
(import NCURSES "nl" "int" "void")
(import NCURSES "nonl" "int" "void")
(import NCURSES "raw" "int" "void")
(import NCURSES "noraw" "int" "void")
(import NCURSES "getch" "int" "void")
(import NCURSES "wmove" "int" "void*" "int" "int") 
(import NCURSES "printw")
(import NCURSES "wprintw")
(import NCURSES "wrefresh" "int" "void*")
(import NCURSES "keypad" "int" "void*" "int") ;; int(bool)
(import NCURSES "halfdelay" "int" "int") ;; int tenth, unit:1/10(s), [1,255]
(import NCURSES "nodelay" "int" "void*" "int") ;; int(bool)
(import NCURSES "addch" "int" "char")
(import NCURSES "echocharch" "int" "char")
(import NCURSES "")
(import NCURSES "")
(import NCURSES "")
(import NCURSES "")
(import NCURSES "")
(import NCURSES "")
(import NCURSES "")
(import NCURSES "")
(import NCURSES "")
(import NCURSES "")
;; (import NCURSES "")


(import NCURSES "LINES")
(import NCURSES "COLS")

(constant 'OK  0)
(constant 'ERR -1)
(constant 'TRUE 1)
(constant 'FALSE 0)

(constant 'KEY_MIN 0401)
(constant 'KEY_BREAK 0401)
(constant 'KEY_DOWN 0402)
(constant 'KEY_UP 0403)
(constant 'KEY_LEFT 0404)
(constant 'KEY_RIGHT 0405)
(constant 'KEY_HOME 0406)
(constant 'KEY_BACKSPACE 0407)
(constant 'KEY_F0 0410)
(constant 'KEY_DL 0510)
(constant 'KEY_IL 0511)
(constant 'KEY_DC 0512)
(constant 'KEY_IC 0513)
(constant 'KEY_NPAGE 0522)
(constant 'KEY_PPAGE 0523)
(constant 'KEY_END 0550)
(constant 'KEY_MAX 0777)

(define (KEY_F N)
  (+ KEY_F0 N))

(setf stdscr nil)

(define (init)
  (let (local-envs '(("TERM" "xterm")
                     ("TERMINFO" "/usr/share/terminfo")
                     ("LD_LIBRARY_PATH" "/lib:/usr/lib")))

    (dolist (e local-envs)
            (env (e 0) (e 1))))

  (or stdscr
      (not (zero? (setf stdscr (initscr))))
      (throw-error "Error initializing stdscr.")))

(define (move x y)
  (wmove stdscr x y))

(define (lines)
  (get-int LINES))

(define (cols)
  (get-int COLS))

(context 'MAIN)
