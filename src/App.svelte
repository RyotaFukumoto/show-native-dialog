<script lang="ts">
  import svelteLogo from './assets/svelte.svg'
  import viteLogo from '/vite.svg'
  import { onMount } from 'svelte';
  import { Capacitor } from '@capacitor/core';
    import Show from './lib/ShowDialog';
    import ShowDialog from './lib/ShowDialog';
  onMount(() => {
    // ページロード時にネイティブコードを呼び出す
  });
  
</script>

<main>
  <div>
    <a href="https://vitejs.dev" target="_blank" rel="noreferrer">
      <img src={viteLogo} class="logo" alt="Vite Logo" />
    </a>
    <a href="https://svelte.dev" target="_blank" rel="noreferrer">
      <img src={svelteLogo} class="logo svelte" alt="Svelte Logo" />
    </a>
  </div>
  <h1>Vite + Svelte</h1>

  <div class="card">
<button on:click={() => ShowDialog.show({title:"テストダイアログ",message:"Svelteからの値"})}>
  Tap!!
</button>
  </div>

  <p>
    Check out <a href="https://github.com/sveltejs/kit#readme" target="_blank" rel="noreferrer">SvelteKit</a>, the official Svelte app framework powered by Vite!
  </p>

  <p class="read-the-docs">
    Click on the Vite and <span class="read-the-docs__red"> Svelte </span> logos to learn more
  </p>
</main>

<style lang="scss">
  .logo {
    height: 6em;
    padding: 1.5em;
    will-change: filter;
    transition: filter 300ms;
  }
  .logo:hover {
    filter: drop-shadow(0 0 2em #646cffaa);
  }
  .logo.svelte:hover {
    filter: drop-shadow(0 0 2em #ff3e00aa);
  }
  .read-the-docs {
    color: #888;
    &__red {
      color: #ff3e00;
    }
  }
</style>
