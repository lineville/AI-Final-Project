;; ===========================================
;;  CMPU-365, Spring 2019
;;  Basic Definitions for Othello and MCTS
;; ===========================================

;;  To ensure that the compiler efficiently handles tail recursion

(setq compiler:tail-call-self-merge-switch t)
(setq compiler:tail-call-non-self-merge-switch t)

;;  To avoid annoying garbage-collection messages

(setf *global-gc-behavior* :auto)

;;  The list of files for the OTHELLO implementation:

(defparameter *chess-files*
  (list "basic-defns"
	"asmt-helper"
	"chess"))

;;  MAKER
;; ------------------------------------
;;  Compiles and loads all files for the Othello/MCTS implementation

(defun maker
    ()
  (dolist (file *chess-files*)
    (compile-file file)
    (load file))
  (compile-file "mcts")
  (load "mcts"))

