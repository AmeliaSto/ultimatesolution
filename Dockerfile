FROM mcr.microsoft.com/dotnet/runtime:3.1 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src
COPY ["MyUltimateSolution.csproj", "./"]
RUN dotnet restore "MyUltimateSolution.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "MyUltimateSolution.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "MyUltimateSolution.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "MyUltimateSolution.dll"]
