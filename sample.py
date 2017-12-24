'''
Created on 2017/12/22

@author: fukemasashi
'''
import random

if __name__ == '__main__':
    s = random.randint(0,99)
    while True:
        t = int(input('>>'))
        if s == t:
            print('clear')
            break
        elif s > t:
            print('more')
        elif s < t:
            print('less')
            