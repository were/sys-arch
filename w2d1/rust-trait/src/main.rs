struct A<T: Sized> {
    value: T,
}

fn main() {
    let a = A::<i32> { value: 42 };
    println!("Value: {}", a.value);
}
