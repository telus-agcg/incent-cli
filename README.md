# Incent CLI

Incent CLI is a command-line interface to interact with the Incent API.


## Prerequisites

#### macOS
```
brew install bash jq yq
```

## Installation
Incent CLI can be setup with the one line command given below.

```console
curl -sL https://raw.githubusercontent.com/technekes/incent-cli/master/bin/incent-setup | bash
```
This script will install to `$HOME/bin`. If this is not on your `$PATH` then you will either need to add it to your `$PATH` or prefix the `incent` command with `$HOME/bin`. <br>
(eg: `~/bin/incent -p 9a9e0c5c53264fd99a820d7bfd42389e -e /metadata/products api `)

## Configuration

* Setup the `secrets.env` file located at `~/.config/incent/secrects.env`.
* Use `--help` for the CLI usage guide

## Usage Examples

* Get the list of products in a program-set and output the first one.
  ```console
  ❯ incent -p 9a9e0c5c53264fd99a820d7bfd42389e -e /metadata/products api | jq .chem_products[0]
  {
    "label": "Cilastop™ Fungicide",
    "uom": "fluid_ounce",
    "list_price": 6.25,
    "key": "cilastop_fungicide",
    "uom_abbreviation": "fl oz",
    "units_per_acre": null,
    "external_ids": []
  }
  ```

---
**NOTE**

  #### Alpha
  For using the `incent local` commands additional setup is required.

  * Clone the `incent-api` repository
  * Have docker installed and logged in

---