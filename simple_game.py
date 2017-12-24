'''
Created on 2017/12/24

@author: fukemasashi
'''
class Game():
    left,top = 3,5
    count = 1
    map = ['' for x in range(6)]
    map[0] = '|x x x G x x x|'
    map[1] = '|x x x o o x x|'
    map[2] = '|x x x x o x x|'
    map[3] = '|x x x o o x x|'
    map[4] = '|x x x o x x x|'
    map[5] = '|x x x S x x x|'
    
    def put(self):
        for x in self.map:
            print(x)
    
    def move(self,num):
        if num == '1':
            self.top -= 1
        elif num == '2':
            self.left -= 1
        elif num == '3':
            self.left += 1
        if (self.top < 0)or(5 < self.top)or(self.left < 0)or(5 < self.left):
            return False  
        i = 0     
        temp = ''
        for x in self.map[self.top]:
            if i == 2*self.left+1:
                temp += str(self.count)
            else:
                temp += x
            i += 1
        self.map[self.top] = temp
        self.count += 1
        if self.count > 9:
            return False
        return True
    
if __name__ == '__main__':
    game = Game()
    print('前:1 右:2 左:3')
    raw = input('>>')
    if raw == '1121131':
        print('clear')
    else:
        for x in raw:
            if game.move(x) == False:
                print('out')
                break
        game.put()
        