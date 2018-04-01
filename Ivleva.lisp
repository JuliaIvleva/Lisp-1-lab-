### ИВЛЕВА ЮЛИЯ, ВАРИНАТ №42
###ЗАДАНИЕ 19
###Определить функцию (луковица n), строящую N-уровневый вложенный список, элементом которого на самом глубоком уровне является N 
 
(defun onion (n)
  (iterate n n)
)

(defun iterate (i n) 
  (cond
     ((= i 0) n)
     (t (list (iter (- i 1) n)))
  )
)

;(onion 1)
;(1)
;(onion 4)
;((((4))))
;(onion 0)
;0

### задание №26
### Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...). 

(defun sp(lst) 
  (cond 
   ((null lst) nil) 
   ((null (cdr lst)) (list (car lst))) 
   (t (cons (list (car lst) (cadr lst)) (sp (cddr lst))))) 
) 

;(sp '(a b c d f g))
;((A B) (C D) (F G))


###ЗАДАНИЕ НОМЕР 31
###Определиь функцию, которая возвращает первый элемент, входящий в оба списка

(defun similar(list-1 list-2)
  (cond 
     ((null list-1) nil)
     ((is-member (car list-1) list-2) (car list-1))
     (t (similar (cdr list-1) list-2) )
  )
)

(defun is-member (a lst)
  (cond
     ((null lst) nil)
     ((eq a (car lst)) t)
     (t (is-member a (cdr lst)))
  )
)

;(similar '(1 2 3 4) '(5 3 2 6))
;2
;(similar '(1 2 3 4) '(5 6 7 8))
;NIL

### задание №32
### Определить, является ли список множеством

(defun pd (lst)
  (cond ((null lst) t)
        ((is-member (car lst) (cdr lst)) nil)
        (t (pd (cdr lst)))))

(defun is-member (a lst1)
  (cond
     ((null lst1) nil)
     ((eq a (car lst1) t)
     (t (is-member a (cdr lst1)))
  )
)

 
;(p'(1 2 3 4))
;T
;(pd '(1 2 2 3 5))
;NIL
