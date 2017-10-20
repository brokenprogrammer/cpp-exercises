fn sum_multiples(bound: u32) -> u32 {
    (1..bound).filter(|&n| n % 3 == 0 || n % 5 == 0).sum()
}

fn main() {
    println!("{}", sum_multiples(1000));
}

#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {

    }
}