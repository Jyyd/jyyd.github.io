(() => {
  const region = document.getElementById('profile-scroll-region');
  const controls = document.querySelector('.sidebar-scroll-controls');
  if (!region || !controls) return;
  const buttons = controls.querySelectorAll('[data-sidebar-scroll]');
  const desktop = window.matchMedia('(min-width: 1024px)');
  const reducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
  const update = () => {
    const sidebar = region.closest('.personal-sidebar');
    const card = region.querySelector('.profile-card');
    const heightLimit = parseFloat(getComputedStyle(sidebar).maxHeight);
    const available = Number.isFinite(heightLimit) ? heightLimit - 2 : region.clientHeight;
    controls.hidden = !desktop.matches || card.scrollHeight <= available;
    const max = region.scrollHeight - region.clientHeight;
    buttons.forEach(button => {
      button.disabled = button.dataset.sidebarScroll === 'up'
        ? region.scrollTop <= 1
        : region.scrollTop >= max - 1;
    });
  };
  buttons.forEach(button => {
    button.addEventListener('click', () => {
      const direction = button.dataset.sidebarScroll === 'up' ? -1 : 1;
      region.scrollBy({
        top: direction * Math.max(140, region.clientHeight * 0.7),
        behavior: reducedMotion.matches ? 'auto' : 'smooth'
      });
    });
  });
  region.addEventListener('scroll', update, { passive: true });
  window.addEventListener('resize', update, { passive: true });
  if (typeof ResizeObserver !== 'undefined') {
    const observer = new ResizeObserver(update);
    observer.observe(region);
    const card = region.querySelector('.profile-card');
    if (card) observer.observe(card);
  }
  if (document.fonts && document.fonts.ready) document.fonts.ready.then(update);
  region.querySelectorAll('img').forEach(image => image.addEventListener('load', update, { once: true }));
  update();
})();
