mod bindings;

use bindings::hello_greeter::hello_world;
use bindings::Guest;

struct Component;

impl Guest for Component {
    /// Say hello!
    fn goodbye_world() -> String {
        hello_world()
    }
}
