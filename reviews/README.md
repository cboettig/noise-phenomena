README.Rmd
================
Carl Boettiger
12/13/2017

README
======

Reviews are copyright of the reviewers and cannot be shared without permission. To keep everything in one place, review material is stored here in encrypted files.

``` r
library(gpg)
```

    ## Found GPG 2.2.3. Using keyring: /Users/cboettig/.gnupg

``` r
keyring <- gpg_list_keys(secret = TRUE)
cboettig <- keyring[1, "id"]
```

Encrypt `.gitignore`'d plain text, allowing only specified users to decrypt:

``` r
msg <- gpg_encrypt("1-review.txt", receiver = cboettig, signer = cboettig)
writeLines(msg, "1-review.txt.gpg")
```

Unencrypt committed `1-review.gpg`:

``` r
writeLines(gpg_decrypt("1-review.txt.gpg"), "1-review.txt")
```
