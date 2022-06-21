import Foundation

// TASK 1.
@propertyWrapper
struct CopyOnWrite<T> {
    private var storage: StorageBox<T>
    init(wrappedValue: T) {
        self.storage = StorageBox(wrappedValue)
    }
    var wrappedValue: T {
        get {
            self.storage.value
        }
        set {
            if isKnownUniquelyReferenced(&storage) {
                self.storage.value = newValue
            } else {
                self.storage = StorageBox(newValue)
            }
        }
    }
}

class StorageBox<StoredValue> {
    var value: StoredValue
    init(_ value: StoredValue) {
        self.value = value
    }
}

struct Dummy<T> {
    @CopyOnWrite var value: T
    init(_ value: T) {
        self.value = value
    }
}

var oh = Dummy(3)
var my = oh

oh.value
my.value

oh.value = 5

oh.value
my.value

my.value = 11

oh.value
my.value
