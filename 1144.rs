use std::io;

fn main() {
    let mut input_text = String::new();
    io::stdin()
        .read_line(&mut input_text)
        .unwrap();

    let x: u32 = input_text.trim().parse().unwrap();

    for n in 1..(x+1) {
        println!("{} {} {}", n, u32::pow(n,2), u32::pow(n,3));
        println!("{} {} {}", n, u32::pow(n,2)+1, u32::pow(n,3)+1);
    }
}

