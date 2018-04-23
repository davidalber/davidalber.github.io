---
layout:     post
title:      I've Been Learning Rust
date:       2018-04-22 22:24
tags:       [dev]
---

Over the past several months I've slowly, but surely been learning
[Rust](https://www.rust-lang.org/) in my spare time. I started back in
December by working my way through the first nine, or so, chapters of
[The Rust Programming
Language](https://doc.rust-lang.org/stable/book/second-edition/)
(a.k.a. "The Rust Book"). After going that far I yearned to actually
apply some of what I learned, and I did that primarily through
contributions to
[rustfmt](https://github.com/rust-lang-nursery/rustfmt).

I've since resumed working my way through The Rust Book. It has been
rewarding, and I've liked learning Rust. I've also enjoyed making
contributions to the Rust Organization. In Redfin's Spring Hackathon I
managed to get a team together to work on a Rust project for a few
days. That team discovered that embedding Rust inside C is pretty
straightforward, which is really neat.

Today I was reading [Chapter 14 of The Rust
Book](https://doc.rust-lang.org/stable/book/second-edition/ch14-00-more-about-cargo.html),
which is about Cargo (Rust's package manager). You can write
documentation comments in Rust code that Cargo turns into HTML
documentation for you. I'd sort of realized that from the very
standard documentation across crates (the Rust term for
packages). What I didn't realize is that code snippets put into those
documentation strings are verified when running `cargo test`. How many
times have I wanted that to just be a thing in other work I've done?!

I'd really like to keep finding opportunities to dive into Rust.
