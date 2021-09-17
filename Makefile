SHELL := /bin/bash

run: check
	cargo run

build: check
	cargo build --target x86_64.json

bootimage:
	cargo bootimage

update:
	cargo update

check:
	cargo check

rustup:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

install:
	rustup install nightly
	rustup override add nightly
	rustup component add rust-src --toolchain nightly-x86_64-apple-darwin
	rustup component add llvm-tools-preview
	cargo install bootimage
	brew install qemu
	brew reinstall qemu

qemu:
	qemu-system-x86_64 -drive format=raw,file=target/x86_64/debug/bootimage-rust-training.bin
