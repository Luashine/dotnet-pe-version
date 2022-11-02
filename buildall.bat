dotnet build -c Release --os win -a x86
dotnet build -c Release --os win -a x64
dotnet build -c Release --os win -a arm
dotnet build -c Release --os win -a arm64

:: linux x86 does not build
::dotnet build -c Release --os linux -a x86
dotnet build -c Release --os linux -a x64
dotnet build -c Release --os linux -a arm
dotnet build -c Release --os linux -a arm64

::dotnet build -c Release --os osx -a x64
::dotnet build -c Release --os osx -a arm64
