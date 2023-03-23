# Debug jest in VSCODE

Content for `.vscode/launch.json`: 
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "name": "vscode-jest-tests",
      "request": "launch",
      "runtimeExecutable": "/bin/zsh", //<= the important part !
      "args": [
        "${relativeFile}"
      ],
      "cwd": "${workspaceFolder}",
      "console": "integratedTerminal",
      "internalConsoleOptions": "neverOpen",
      "program": "${workspaceFolder}/../../node_modules/.bin/jest"
    }
  ]
}
```

# Run test in batch inside vscode tests

Jest command line in project config:

```
    "jest.jestCommandLine": "source ~/.zprofile && ../../node_modules/.bin/jest -c jest.config.js",
```
