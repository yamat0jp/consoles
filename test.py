'''
Created on 2017/12/21

@author: fukemasashi
'''
import random

class Num():
    pass

def draw():
    s = ''
    for x in range(9):
        s += numbers[x].num
        if (x+1) % 3 == 0:
            s += '\n'
    print('====')
    print(s[0:-1])
    
def key():
    if i % 2 == 0:
        while True:
            s = input('>>')
            if temp(s) == True:
                numbers[int(s)-1].num = 'o'
                break
    else:
        for x in range(50):
            s = random.randint(0,8)
            if temp(str(s+1)) == True:
                numbers[s].num = 'x'
                break

def temp(count):
    for x in numbers:
        if x.num == count:
            return True
    return False
    
def check():
    def part(arg):
        s = numbers[arg[0]].num
        for x in arg:
            if numbers[x].num != s:
                return ''
        return s
    
    s = ''
    s += part([0,1,2])
    s += part([3,4,5])
    s += part([6,7,8])
    s += part([0,4,8])
    s += part([6,4,2])
    s += part([0,3,6])
    s += part([1,4,7])
    s += part([2,5,8])
    if s == '':
        return ''
    else:
        return s[0]

if __name__ == '__main__':
    numbers = [Num() for x in range(9)]
    l = [0 for x in range(9)]
    i = 1
    for x in numbers:
        x.num = str(i)
        i += 1
    draw()
    for i in range(9):
        key()
        draw()
        s = check()
        if s == 'o':
            print('you win!')
            break
        elif s == 'x':
            print('you lose.')
            break
    else:
        if s == '':
            print('drow')
            