# Install Agda on MacOS X
```bash
$ brew install agda
$ cabal update
$ cabal install --lib ieee754
```

then to compile a sample program, such as hello-world.agda

```bash
$ agda --compile src/hello-world.agda 
```

if everything works, then you should be able to run it with

```bash
$ ./hello-world
Hello, World!
$
```

