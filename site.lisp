(ql:quickload "aserve")

(defpackage :voidnetsphere
    (:use :common-lisp :net.aserve :net.html.generator))

(in-package :voidnetsphere)
(start :port 8000)

(publish-file :path "/style.css"
         :file "./style.css")

(publish-file :path "/younix.png"
              :file "./younix.png")
(publish-file :path "/favicon"
              :file "./favicon.ico")
(publish-file :path "/media/makima.png"
              :file "./media/makima.png")
(publish-file :path "/media/Produced-by-humans"
              :path "./media/Produced-By-Human-Not-By-AI-Badge-white.png ")


(publish :path "/"
    :content-type "text/html"
    :function
    #'(lambda (req ent)
         (with-http-response (req ent)
            (with-http-body (req ent)
               (html
                  (:html (:head (:title "Enter the void")
				  				((:link :rel "stylesheet" href "./style.css" ))
                                ((:link rel "icon" type "image/x-icon" href "./favicon"))
								)

				  		 (:body

                          (:div
                           ((:div :style "float: left;")
                            ((:img :src "./younix.png")))
                           (:div
                            (:h1 "welcome to the Void, my personal Netsphere.")
                            (:h1 "this is the Netsphere, my personal Void, my personal noosphere.")))

                         (:ul
                         ((:a href "https://skarnet.org")  "skarnet.org") :br
                         ((:a href "https://gentoo.org") "gentoo") :br)
                         )))))))
