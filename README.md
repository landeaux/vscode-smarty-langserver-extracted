# vscode-smarty-langserver-extracted

Smarty language server extracted from [vscode-smarty](https://github.com/ssigwart/vscode-smarty).

## Install

```sh
npm i -g vscode-langservers-extracted
```

Once installed globally, the `smarty-language-server` will be accessible in
your `$PATH`.

## Usage

```sh
smarty-language-server --stdio
```

## Development

### Clean

Remove files and directories generated from a previous build.

```sh
npm run clean
```

### Build

Build the language server.

```sh
npm run build
```

### Sync Dependencies

Synchronize dependencies.

```sh
npm run syncdeps
```

### Update

Clean, build, and synchronize dependencies in a single command.

```sh
npm run update
```

## LICENSE

This package licensed under the MIT.

See the [LICENSE](./LICENSE)

## THIRD-PARTY LICENSES

- [https://github.com/ssigwart/vscode-smarty/blob/main/LICENSE](https://github.com/ssigwart/vscode-smarty/blob/main/LICENSE)

## Credits

This project was heavily inspired by [vscode-langservers-extracted](https://github.com/hrsh7th/vscode-langservers-extracted).
