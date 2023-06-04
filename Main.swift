print("Making tree1")
var tree1 = Tree(numberOfLeaves: 600, age: 1, type: "Spruce", feetTall: 2, id: 1)
print(output(tree1))
print("Grow")
tree1.grow()
print(output(tree1))
print("Grow Slow")
tree1.growSlow()
print(output(tree1))
print("Lose all leaves")
tree1.loseAllLeaves()
print(output(tree1))

func output(_ tree: Tree) -> String {
    return "Tree\(tree.id)'s attributes: Age: \(tree.age) | Height: \(tree.feetTall) | # of Leaves: \(tree.numberOfLeaves) | Breed: \(tree.type)"
}

class Tree {
    // defining fields
    var numberOfLeaves: Int
    var age: Int
    var type: String
    var feetTall: Int
    var id: Int

    init(numberOfLeaves: Int, age: Int, type: String, feetTall: Int, id: Int) {
        self.numberOfLeaves = numberOfLeaves
        self.age = age
        self.type = type
        self.feetTall = feetTall
        self.id = id
    }

    func loseAllLeaves() {
        self.numberOfLeaves = 0
        self.age += 1
    }

    func grow() {
        self.numberOfLeaves += 10000
        self.feetTall += 5
    }
    
    func growSlow() {
        self.numberOfLeaves += 4000
        self.feetTall += 2
    }
}