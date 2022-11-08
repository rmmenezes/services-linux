# Prática FTP/FTPS e HTTP/HTTPS:

Na raiz deste repositório encontra-se o Roteiro de Execução em formato PDF da implementação passo a passo dos serviços de FTP/FTPS e HTTP/HTTPS seguindo algumas boas práticas de segurança. O processo de configuração pode ser realizado passo a passo seguindo o arquivo do roteiro ou de forma automatizada.

Para instalar os serviços de em questão de forma automatizada em um servidor Linux siga as instruções:

### Automação da instalação do servidor FTPS (vsftpd)


Clone o repositório do Github:
```console
server@server:~$ git clone https://github.com/rmmenezes/services-linux.git
```

Acesse o repositório clonado (services-linux):
```console
server@server:~$ cd services-linux/
```

Acesse o diretório ftp-config:
```console
server@server:~$ cd ftp-config/
```

Habilite a permissão de execução para o arquivo ftp.sh:
```console
server@server:~$ sudo chmod +x ftp.sh
```

Execute o ftp.sh para iniciar a instalação do FTPS automatizado:
```console
server@server:~$ sudo ./ftp.sh
```

___


### Automação da instalação do servidor HTTP/HTTPS (Apache)


Clone o repositório do Github:
```console
server@server:~$ git clone https://github.com/rmmenezes/services-linux.git
```

Acesse o repostorio colnado (services-linux):
```console
server@server:~$ cd services-linux/
```

Acesse o diretorio apache-config:
```console
server@server:~$ cd apache-config/
```

Habilite a permição de execução para o arquivo apache.sh:
```console
server@server:~$ sudo chmod +x apache.sh
```

Execute o ftp.sh para iniciar a instalação do servidor Apache (HTTP/HTTPS) automatizado:
```console
server@server:~$ sudo ./apache.sh
```
