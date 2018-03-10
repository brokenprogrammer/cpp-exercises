fn sum_even_fib(bound: u64) -> u64 {
    let mut i = 0;
    let mut f1 = 1;
    let mut f2 = 1;

    while i < bound {
        let t = f2;
        f2 = f2 + f1;
        f1 = t;

        if f2 % 2 == 0 {
            i += f2;
        }
    }

    i
}

fn main() {
    println!("{}", sum_even_fib(4000000));
}

#[cfg(test)]
mod tests {
    #[test]
    fn it_works2() {

    }
}