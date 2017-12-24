'''
Created on 2017/12/22

@author: fukemasashi
'''
import random

if __name__ == '__main__':
    s = ''
    t = [str(x) for x in range(9)]
    for x in range(4):
        i = random.randint(0,len(t))
        s += t[i]
        del t[i]
    while True:
        t = input('>>')
        if t == '0000':
            print(s)
        elif s == t:
            print('clear!')
            break
        else:
            i = 0
            j = 0
            for x in range(len(s)):
                if t[x] in s:
                    if t[x] == s[x]:
                        i += 1
                    else:
                        j += 1
            print('{0},{1}'.format(i,j))
            