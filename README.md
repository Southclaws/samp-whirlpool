# Whirlpool Plugin for SA-MP

Very simple plugin. Just provides an implementation of the whirlpool hash
algorithm for PAWN. This is so that you don't need to use bad hash systems like
MD5, plain awful ones like Adler32 (UDB_Hash) or ones that aren't even true
hashes (encode).

## Installation

Simply install to your project:

```bash
sampctl package install Southclaws/samp-whirlpool
```

Include in your code and begin using the library:

```pawn
#include <whirlpool>
```

## Usage

This plugin adds just one function:

```pawn
native WP_Hash(buffer[], len, const str[]);
```

To use simply call the function, passing a buffer of at least 129 characters,
the size of that buffer and the string you want to hash. You need 128 for the
hash and 1 for the NULL terminator.

```pawn
#include <a_samp>

native WP_Hash(buffer[], len, const str[]);

main()
{
    new
        buf[129];
    printf("hash");
    WP_Hash(buf, sizeof (buf), "The quick brown fox jumps over the lazy dog");
    print(buf);
}
```

This will output:

```text
B97DE512E91E3828B40D2B0FDCE9CEB3C4A71F9BEA8D88E75C4FA854DF36725FD2B52EB6544EDCACD6F8BEDDFEA403CB55AE31F03AD62A5EF54E42EE82C3FB35
```

Which is the correct hash for that string.
