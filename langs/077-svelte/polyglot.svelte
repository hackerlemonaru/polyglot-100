<!-- polyglot-100 :: entry 077 :: Svelte component -->
<script>
  const entries = 100;
  const sum = Array.from({ length: 10 }, (_, i) => i + 1)
    .reduce((a, b) => a + b, 0);

  function fib(n) {
    let a = 0, b = 1;
    for (let i = 0; i < n; i++) [a, b] = [b, a + b];
    return a;
  }

  const fibTen = fib(10);
  $: share = 100 / entries;
</script>

<h1>Hello from Svelte!</h1>
<p>sum(1..10) = {sum}</p>
<p>fib(10) = {fibTen}</p>

<div class="bar">
  {#each Array(entries) as _, i}
    <span style="width:{share}%; background:hsl({i * 3.6} 70% 55%)"></span>
  {/each}
</div>

<style>
  .bar { display: flex; height: 0.75rem; }
</style>
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte -- entry 077 of 100 in the polyglot-100 archive. Family: Mark -->
<!-- Svelte --  -->
