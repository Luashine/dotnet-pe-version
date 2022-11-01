# dotnet-pe-version

This is a minimal program to test the `Version` field in PE headers. A ready binary is available under "Releases".

1. The **Version** is present in PE header
2. The **Version** is printed to STDOUT when run.

Compiled for .net 6.0.

## Compilation instructions

I used VSCode/VSCodium with the following extensions:

- ms-dotnettools.csharp aka "C#"
- tintoy.msbuild-project-tools aka "MSBuild project tools"
- And a system install of the .NET SDK 6.0

Then you need to open this folder in VSCodium, open Terminal in the IDE.
In the Terminal type `dotnet run` to compile and run the program.

## Motivation

I've tried to find a Linux-world tool to create a PE header to include the `Version` field
that I needed for a test of an extractor. I didn't find anything, the only tools there are
can only *read* but not *write/create* these headers.

It's probably overkill to install the entire IDE etc. just for this, I think it's possible to
compile something with just `msbuild` + PE version header, but it was easier this way.
