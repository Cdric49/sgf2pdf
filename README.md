# sgf2pdf

## Description
Bash script to convert sgf game to pdf.

## Feature
- Print variations
- Print diagram per comment

## Requirements

- **sgf2dg**

On Debian/Ubuntu : ``` apt-get install sgf2dg```

On RH : ``` yum install sgf2d ```

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

``` sgf2pdf.sh <sgf file> ```
