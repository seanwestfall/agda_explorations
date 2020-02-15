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

## Guides to Agda
[Agda Wiki](https://wiki.portal.chalmers.se/agda/pmwiki.php)  
[Agda Documentation](https://agda.readthedocs.io/en/v2.6.0.1/)  
[Agda Github](https://github.com/agda/agda)  
[Learn you an Adga](http://learnyouanagda.liamoc.net/pages/introduction.html)  
[Agda Hackage](https://hackage.haskell.org/package/Agda)  
[Programming Language Foundations in Agda](https://plfa.github.io/)  
  
---  
  
This source code is licensed under the _Creative Commons Zero v1.0 Universal_.  
