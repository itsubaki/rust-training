fn main() {
    let mut foo = 42;
    let f = &mut foo;
    // println!("{}", foo); // cannot borrow `foo` as immutable because it is also borrowed as mutable

    let bar = *f; // bar -> 42
    *f = 13; // foo -> 13

    println!("{}", bar);
    println!("{}", foo);
}
