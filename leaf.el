;;; leaf.el ---                                      -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Naoya Yamashita

;; Author: Naoya Yamashita
;; Keywords: settings

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(defcustom leaf-keywords
  '(:disabled
    :if :when :unless
    ;; Any other keyword that also declares commands to be autoloaded
    ;; (such as :bind) must appear before this keyword.
    :init
    ;; This must occur almost last; the only forms which should appear after
    ;; are those that must happen directly after the config forms.
    :config))

(defmacro leaf-core (name args))

(defmacro leaf (name &rest args)
  (declare (indent 1))
  "leaf macro"
  `(progn ,name ,arg))

(provide 'leaf)
;;; leaf.el ends here
