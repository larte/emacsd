;;; init-custom-k8s.el --- Track kubernetes context  -*- lexical-binding: t; -*-

;; Copyright (C) 2017

;; Author:  <larte@arch>
;; Keywords: lisp, tools, faces

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

;; TODO check last modification time of config before reading.

;;; Code:

(setq custom-k8s-config "~/.kube/config")
(setq custom-k8s-current-context "N/A")

(defun custom-k8s-readlines ()
  (with-temp-buffer
    (insert-file-contents custom-k8s-config)
    (split-string (buffer-string) "\n" t)))

(defun custom-k8s-get-context ()
  (mapcar
   'custom-k8s-matchline
          (custom-k8s-readlines)))

(defun custom-k8s-matchline (line)
  (save-match-data
    (and (string-match "current-context: \\(.*\\)" line)
         (setq custom-k8s-current-context (match-string 1 line)))))


(defun custom-k8s-context ()
  (interactive)
  (custom-k8s-get-context)
  (format "%s" custom-k8s-current-context)
  )

(provide 'init-custom-k8s)
