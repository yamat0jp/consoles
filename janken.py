'''
Created on 2017/12/24

@author: fukemasashi
'''
import random

def janken(num):
    if num == 1:
        return 'グー！'
    elif num == 2:
        return 'チョキ！'
    elif num == 3:
        return 'パー！'
    
if __name__ == '__main__':
    result = []
    for x in range(5):
        print('グー:1 チョキ:2 パー:3')
        s = random.randint(1,3)
        t = int(input('>>'))
        print('computer=>',janken(s),'you=>',janken(t))
        if (s + 1 == t)or(s - 2 == t):
            print('x')
            result.append('x')
        elif (s - 1 == t)or(s + 2 == t):
            print('o')
            result.append('o')
        elif s == t:
            print('-')
            result.append('-')
    for x in result:
        print('|',x,'|')
    