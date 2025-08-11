fn main() {
    let a = vec![1, 2, 3, 4, 5];
    let mut idx = None;
    for i in a.iter() {
        if i == &3 {
            idx = Some(i);
            break;
        }
    }
    if let Some(idx) = idx {
        a.remove(idx);
    }
    println!("{:?}", a);
}