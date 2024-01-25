cargo_component_bindings::generate!();

use bindings::component::goodbye::greeter;
use bindings::Guest;

struct Component;

impl Guest for Component {
    /// Say goodbye!
    fn goodbye_world() -> String {
        greeter::hello_world()
    }
}
