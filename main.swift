import riffle

class DemoBackend: riffle.Domain, riffle.Delegate {
    override func onJoin() {
        register("hello") { (args: Any) -> Any? in
            print("Received call!")
            return "Hello!"
        }
    }
}

let backend = DemoBackend(name: "xs.test")
backend.delegate = backend
backend.join()
