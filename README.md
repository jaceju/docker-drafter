# docker-drafter

A Docker Container for [drafter](https://github.com/apiaryio/drafter).

## Usage

Read the official [drafter documentation](https://github.com/apiaryio/drafter) first.

```bash
docker run --rm -v "$PWD:/drafter" jaceju/drafter -v
```

For short, you can use alias for the long command line text. Place the alias statement in your `.bashrc` or `.zshrc`.

```bash
alias drafter='docker run --rm -v "$PWD":/drafter jaceju/drafter'
```

## Build Docker Image

```
docker build -t jaceju/drafter .
```

## License

[The MIT License (MIT)](https://opensource.org/licenses/MIT)
