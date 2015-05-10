#lang racket/gui

(require gonz/gui-helpers)

(define (url-field-callback element event)
  
  (when (or (event-equal? event 'text-field-enter)
            (event-equal? event 'button))
    (fetch-youtube-audio (send url-field get-value))))

(define (main-window)
  
  (define top-frame (new frame% [label "youtube-to-audio"]))

  (vpanel main-vpanel top-frame)
  (tfield url-field main-vpanel
          "YouTube URL"
          url-field-callback
          [minimum-width 300])
  (btn url-button top-frame
       "Fetch"
       url-field-callback)
  
  (send top-frame show #t))
