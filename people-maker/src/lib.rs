mod bindings;

use bindings::exports::component::people_maker::people::{Guest, Person};

struct Component;

impl Guest for Component {
    /// Say hello!
    fn new_person(name: String, age: u32) -> Person {
        Person { name, age }
    }
}
