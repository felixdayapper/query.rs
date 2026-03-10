#!/bin/bash
cargo build --release
cp target/release/query-rs query-rs-x86_64-linux

cargo build --release --target aarch64-unknown-linux-gnu
cp target/aarch64-unknown-linux-gnu/release/query-rs query-rs-aarch64-linux

echo "Done! Binaries: query-rs-x86_64-linux, query-rs-aarch64-linux"