cargo_component_bindings::generate!();

// use bindings::Guest;
use crate::bindings::exports::component::hello::greeter::Guest;

struct Component;

impl Guest for Component {
    /// Say hello!
    fn hello_world() -> String {
        "Hello, World!".to_string()
    }
}
