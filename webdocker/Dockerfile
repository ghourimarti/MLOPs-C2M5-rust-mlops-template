FROM clux/muslrust:stable AS builder

WORKDIR /app
COPY . .
RUN cargo build --release

FROM scratch
COPY --from=builder /app/target/x86_64-unknown-linux-musl/release/webdocker /webdocker
EXPOSE 9000
ENTRYPOINT ["/webdocker"]

    
