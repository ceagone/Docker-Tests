FROM debian:10
RUN apt-get update && apt-get install -y wget gpg
RUN wget -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg && mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
RUN wget https://packages.microsoft.com/config/debian/10/prod.list && mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
RUN apt-get update && apt-get install -y apt-transport-https && apt-get update && apt-get install -y dotnet-sdk-3.1
COPY . /var/DevOpsLeadsApi/
RUN dotnet build /var/DevOpsLeadsApi/
EXPOSE 5000 5001
CMD ["dotnet", "run", "--project", "/var/DevOpsLeadsApi/DevOpsLeadsApi.Api/"]

