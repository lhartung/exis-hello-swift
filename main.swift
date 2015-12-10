import riffle

let domain = riffle.Domain(name: "xs.test")

class DemoApp: riffle.RiffleDelegate {
    init() {
        print("Initializing...")
    }

    func onJoin() {
        domain.register("hello#details") { (args: Any) -> Any? in
            print("Received call!")
            return "Hello!"
        }
    }

    func onLeave() {}
}

let delegate = DemoApp()
domain.delegate = delegate
domain.join()
