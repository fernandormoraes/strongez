# Strongez

A Prototype mobile application for defining goals and workout plan with progress measurements.

## Project architecture

This project aims to be only a UI prototype, this means that no business rule is expected even with domain/infra directories are present.

Besides that, this project architecture is designed respecting *Atomic Design*, where widgets are build in following structure: Atoms -> Molecules -> Organisms -> Templates

### Atoms

Tokens who can be described as the basic unit of design, examples: Colors, paddings and radius.

### Molecules 

Minimal Widgets builded with Atoms, examples: Decorations, Containers, Cards.

### Organisms

Widgets with functionallity builded with Molecules and Atoms, can be part of Templates and/or Pages, examples: Default Cards, ListViews, etc.

### Templates

Complete Widgets to be reused in pages, it can be feature complete, examples: Login Form, Chart display, Appbars, etc.

## Showcase

![alt text](https://github.com/fernandormoraes/strongez/raw/main/media/show.gif "")
