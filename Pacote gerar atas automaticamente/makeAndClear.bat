chdir output
del *.pdf
chdir ..

python makeAtas.py uftccomptcc.csv

del *.aux
del *.log
del *.out
del *.gz
del *.gz(busy)
del *.nav
del *.toc
del *.vrb
del *.snm