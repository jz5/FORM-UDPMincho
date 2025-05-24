#!/bin/bash

python3 adjust_glyph_width.py ../original/BIZUDPMincho-Regular.ttf temp.ttf one 1393 uniFF11 1393
ttx -m temp.ttf tables-Regular.ttx -o ../release/FORMUDPMincho-Regular.ttf

python3 adjust_glyph_width.py ../original/BIZUDPMincho-Bold.ttf temp.ttf one 1516 uniFF11 1516
ttx -m temp.ttf tables-Bold.ttx -o ../release/FORMUDPMincho-Bold.ttf

rm temp.ttf
rm -rf /diff

diffenator2 diff -fb ../original/BIZUDPMincho-Regular.ttf -fa ../release/FORMUDPMincho-Regular.ttf -o ../diff/Regular
diffenator2 diff -fb ../original/BIZUDPMincho-Bold.ttf -fa ../release/FORMUDPMincho-Bold.ttf -o ../diff/Bold
