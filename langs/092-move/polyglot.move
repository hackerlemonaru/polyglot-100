// polyglot-100 :: entry 092 :: Move
module polyglot::archive {
    use std::debug;

    const ENTRIES: u64 = 100;
    const BYTES_PER_ENTRY: u64 = 4096;
    const E_CHECKSUM: u64 = 1;

    public fun fib(n: u64): u64 {
        let a = 0u64;
        let b = 1u64;
        let i = 0u64;
        while (i < n) {
            let t = a + b;
            a = b;
            b = t;
            i = i + 1;
        };
        a
    }

    public fun sum_to(n: u64): u64 {
        let total = 0u64;
        let i = 1u64;
        while (i <= n) {
            total = total + i;
            i = i + 1;
        };
        total
    }

    public entry fun run() {
        let total = sum_to(10);
        let f = fib(10);
        assert!(total == f, E_CHECKSUM);
        debug::print(&b"Hello from Move!");
        debug::print(&total);
        debug::print(&f);
    }

    #[test]
    fun fifty_five() {
        assert!(fib(10) == 55, E_CHECKSUM);
        assert!(sum_to(10) == 55, E_CHECKSUM);
    }
}
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family: Frontier & E
// Move -- entry 092 of 100 in the polyglot-100 archive. Family
