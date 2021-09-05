SHELL := /bin/bash

run: check
	cargo run

build: check
	cargo build

check:
	cargo check

install:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
