
# Nome do Projeto

Este é um aplicativo desenvolvido com o [Flutter](https://flutter.dev/), um framework da Google para construir aplicações nativas para Android, iOS, Web e Desktop com uma única base de código.

## Requisitos

- **Flutter SDK**: Você pode fazer o download do Flutter SDK em [flutter.dev](https://flutter.dev/docs/get-started/install).
- **Android Studio** (opcional para emulador Android) ou **Xcode** (para iOS).
- **Editor de código**: Recomenda-se o uso do [Visual Studio Code](https://code.visualstudio.com/) com a extensão do Flutter ou o próprio Android Studio.

### Instalando o Flutter SDK

1. Faça o download do Flutter SDK em [flutter.dev](https://flutter.dev/docs/get-started/install).
2. Siga as instruções da documentação para adicionar o Flutter ao seu PATH.
3. No terminal, execute o comando abaixo para verificar a instalação do Flutter:

   ```bash
   flutter doctor
   ```

## Primeira Execução e Download de Dependências

Na primeira vez que você executa um projeto Flutter no terminal, o Flutter pode baixar algumas dependências adicionais necessárias para compilar o aplicativo. Esse processo inclui o download do **Flutter Engine** e de outros pacotes essenciais, principalmente se você nunca executou o Flutter nesse dispositivo antes.

### Etapas

1. Após instalar o Flutter e navegar até o diretório do projeto, execute o comando:

   ```bash
   flutter run
   ```

## Pré-requisito: Back-end em Execução

Este projeto Flutter se comunica com um back-end para obter dados ou realizar operações específicas. **Certifique-se de que o back-end está em execução** antes de iniciar o aplicativo Flutter, pois ele depende desse servidor para funcionar corretamente.

### Como Executar o Back-end

1. Navegue até o diretório do back-end no terminal.
2. Siga as instruções específicas para iniciar o servidor, geralmente executando um comando como:

   ```bash
   node main.js
   ```
   
