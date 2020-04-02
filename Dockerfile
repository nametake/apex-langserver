FROM openjdk:slim

WORKDIR /home

RUN apt-get update \
  && apt-get install -y --no-install-recommends curl \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && curl -o apex-lsp.jar -L 'https://github.com/forcedotcom/salesforcedx-vscode/blob/develop/packages/salesforcedx-vscode-apex/out/apex-jorje-lsp.jar?raw=true'

CMD ["java", "-cp", "apex-lsp.jar", "-Ddebug.internal.errors=true", "-Ddebug.semantic.errors=false", "apex.jorje.lsp.ApexLanguageServerLauncher"]
