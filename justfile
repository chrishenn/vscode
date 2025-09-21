alias l := lint

lint:
    just --fmt --unstable
    prettier . --write
