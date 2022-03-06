import Foundation

protocol FlyBehavior {
    func fly()
}

protocol QuackBehavior {
    func quack()
}

extension FlyBehavior {
    func fly() {
        print("날고 있다")
    }
}

extension QuackBehavior {
    func quack() {
        print("공통 꽥꽥")
    }
}

class Duck {
    func swim() {
        print("모든 오리는 물에서 수영 가능")
    }
    
    func display() {
        
    }
}

class MallarDuck: Duck, FlyBehavior, QuackBehavior {
    func fly() {
        print("물오리 날라가기")
    }
    
    func quack() {
        print("물오리 꽥꽥")
    }
}

class RubberDuck: Duck, QuackBehavior {
    func quack() {
        print("고무오리 꽥꽥")
    }
}

let flyBehavior: FlyBehavior = MallarDuck()
flyBehavior.fly()

let quackBehavior: QuackBehavior = RubberDuck()
quackBehavior.quack()
