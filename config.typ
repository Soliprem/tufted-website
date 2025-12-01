#import "@preview/tufted:0.0.1": *
#import "@preview/sicons:15.13.0": *

#let template = tufted-web.with(
  header-links: (
    "/": "Home",
    "/posts/": "Posts",
    "/about/": "About",
  ),
  title: "Soliprem",
)
