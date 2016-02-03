# sgf2pdf

## Description
Bash script to convert sgf game to pdf.

## Feature
- Print variations
- Print diagram per comment

## Requirements

- **sgf2dg**

On Debian/Ubuntu : ``` apt-get install sgf2dg```

On RH : ``` yum install sgf2dg ```

- **sgfutils**

```
wget http://homepages.cwi.nl/~aeb/go/sgfutils/sgfutils.tgz
tar xzvfp sgfutils.tgz
cd sgfutils
./configure
make
make install
```

## Usage

``` ./sgf2pdf.sh <sgf file> ```

## Example

A [sample](https://github.com/Cdric49/sgf2pdf/raw/master/example/Fan-Hui-vs-AlphaGo-20151009-Commentary-An-Younggil.pdf) is generate into example folder (the sgf is from [Go Game Guru]( https://gogameguru.com/go-commentary-deepmind-alphago-vs-fan-hui-game-5/)).

``` ./sgf2pdf.sh Fan-Hui-vs-AlphaGo-20151009-Commentary-An-Younggil.sgf ```
