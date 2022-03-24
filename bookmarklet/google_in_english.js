javascript: (() => {
  const params = new URLSearchParams(location.search);
  params.set("hl", "en");
  params.set("gl", "US");
  window.history.replaceState(
    {},
    "",
    decodeURIComponent(`${location.pathname}?${params}`)
  );
  location.reload();
})();
