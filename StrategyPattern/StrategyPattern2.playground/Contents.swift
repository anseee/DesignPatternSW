import UIKit

protocol WeaponBehavior {
    func useWeapon()
}

struct KnifeBehavior: WeaponBehavior {
    func useWeapon() {
        print("칼 공격")
    }
}

struct AxeBehavior: WeaponBehavior {
    func useWeapon() {
        print("도끼 공격")
    }
}

class Character {
    private var weaponBehavior: WeaponBehavior?
    
    func setWeaponBehavior(_ behavior: WeaponBehavior) {
        self.weaponBehavior = behavior
    }
    
    func attack() {
        weaponBehavior?.useWeapon()
    }
}

let c = Character()
c.setWeaponBehavior(AxeBehavior())
c.attack()

let c2 = Character()
c2.setWeaponBehavior(KnifeBehavior())
c2.attack()
