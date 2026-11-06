// polyglot-100 :: entry 093 :: Cairo
const ENTRIES: u32 = 100;
const BYTES_PER_ENTRY: u32 = 4096;

fn fib(n: u32) -> u64 {
    let mut a: u64 = 0;
    let mut b: u64 = 1;
    let mut i: u32 = 0;
    loop {
        if i >= n {
            break;
        }
        let t = a + b;
        a = b;
        b = t;
        i += 1;
    };
    a
}

fn sum_to(n: u64) -> u64 {
    let mut total: u64 = 0;
    let mut i: u64 = 1;
    loop {
        if i > n {
            break;
        }
        total += i;
        i += 1;
    };
    total
}

fn main() {
    let total = sum_to(10);
    let f = fib(10);
    println!("Hello from Cairo!");
    println!("sum(1..10) = {}", total);
    println!("fib(10)    = {}", f);
    assert(total == f, 'the 55 coincidence failed');
}

#[cfg(test)]
mod tests {
    use super::fib;

    #[test]
    fn tenth_is_fifty_five() {
        assert(fib(10) == 55, 'bad fib');
    }
}
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontier & 
// Cairo -- entry 093 of 100 in the polyglot-100 archive. Family: Frontie
