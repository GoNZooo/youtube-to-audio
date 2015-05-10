#lang racket/base

(require racket/system)

(provide fetch-youtube-audio)

(define (fetch-youtube-audio youtube-url)
  
  (system (format "youtube-dl --restrict-filenames --audio-format mp3 -x ~a"
                  youtube-url)))

