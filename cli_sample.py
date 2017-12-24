'''
Created on 2017/12/23

@author: fukemasashi
'''
import random

if __name__ == '__main__':
    s = random.randint(0,99)
    for x in range(10):
        s2 = int(input('>>'))
        s1 = random.randint(0,99)
        print(s1)
        i = abs(s - s1)
        j = abs(s - s2)
        if i * j == 0:
            break
        if i == j:
            print('even!!')
        elif i > j:
            print('advantage')
        elif i < j:
            print('behind')
        if (i < 5)or(j < 5):
            print('near!')
    if i == j:
        print('draw')
    elif i == 0:
        print('you lose.')
    elif j == 0:
        print('you win.')
    else:
        print(s)
        