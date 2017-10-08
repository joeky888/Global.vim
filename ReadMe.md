Highlight all files which vim does't support.

Useful for system/server log files, unknown filetypes and plain text files.

Example
======
* Copy and save the following json code from [wikipedia](https://en.wikipedia.org/wiki/JSON)
```json
{
  "firstName": "John",
  "lastName": "Smith",
  "isAlive": true,
  "age": 25,
  "address": {
    "streetAddress": "21 2nd Street",
    "city": "New York",
    "state": "NY",
    "postalCode": "10021-3100"
  },
  "phoneNumbers": [
    {
      "type": "home",
      "number": "212 555-1234"
    },
    {
      "type": "office",
      "number": "646 555-4567"
    },
    {
      "type": "mobile",
      "number": "123 456-7890"
    }
  ],
  "children": [],
  "url": "https://en.wikipedia.org/wiki/JSON"
}
```

1. Save it to "wiki.json" which vim knows that it's a json file.
2. Save it to "wiki.jjj"  which vim doesn't know that it's a json file.
![wiki.json](https://i.imgur.com/hv7GbzU.jpg)

NOTE: I installed the [MonoKombat.vim theme](https://github.com/j16180339887/MonoKombat.vim)

## Install with [Vundle](https://github.com/VundleVim/Vundle.vim)
```vim
Bundle 'j16180339887/Global.vim'
```

## Install with [Plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'j16180339887/Global.vim'
```

## Install with [Pathogen](https://github.com/tpope/vim-pathogen)
```sh
cd ~/.vim/bundle
git clone --depth 1 https://github.com/j16180339887/Global.vim.git
```

Licence: Public domain
