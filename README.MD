# monaco-build

Build scripts for building the Monaco Editor directly from the vscode repo.

Used by the [Data-Forge Notebook](http://www.data-forge-notebook.com/) build process.

Check out the file build.bat to see the commands required to extract and package Monaco Editor.

[Click here to support my work](https://www.codecapers.com.au/about#support-my-work)

Use Node.js 12 to run this:

```bash
nvm install 12.22.10
nvm use 12.22.10
```

How to install classic Yarn:
https://classic.yarnpkg.com/en/docs/install#windows-stable

## Getting it

This is a meta repo.

You need meta installed:

```bash
npm install meta -g
```

The clone the repo:

```bash
meta git clone git@github.com:data-forge-notebook/monaco-build.git
```

## Building it

Run

    build.bat



## More information on the build process

https://github.com/data-forge-notebook/monaco-editor/blob/master/CONTRIBUTING.md#a-brief-explanation-on-the-source-code-structure
