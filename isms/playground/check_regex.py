import re

txt = "A. ISO 9001:2008\r\nB. ISO 9001:2013\r\nC. ISO 9001:2015"
txt = txt.replace(',', ' ')
x = txt.split('\r\n')
y = txt.split('\n')
print(x)
print(y)
for item in y:
    print(item.split('.', 1)[1].strip())
