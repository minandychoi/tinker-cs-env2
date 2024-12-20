fn main() {
    for (key, value) in ::std::env::vars() {
        println!("[env] {key} = {value}");
    };
}
