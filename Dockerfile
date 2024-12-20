FROM rust:1-bookworm AS build

WORKDIR /app
COPY . .
RUN cargo build --release

FROM debian:bookworm-slim AS run

WORKDIR /app
COPY --from=build /app/target/release/tinker-cs-env2 tinker-cs-env2
