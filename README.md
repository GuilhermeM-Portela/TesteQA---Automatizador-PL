# 🚀 Robot Framework

Esse projeto contém o Teste de Seleção QA Automatizado PL da PrimeControl usando o framework Robot.

## 📌 Pré-requisitos
Antes de começar, verifique se você atendeu aos seguintes requisitos:
- Python
- Robot framework
  - Selenium library  

Para instalar essas dependencias basta seguir os passos abaixo.
## 🔎 Instale as dependências:

```sh
pip install -r requirements.txt
```
 > **OBS.:** Se não deseja instalar essas dependencias na sua maquina você pode usar uma env. Para isso siga os passos abaixo:  

 1 - Criando ambiente onde as dependencias ficarão:
```sh
python -m venv .env
```
 2 - Ativando o ambiente virtual:
```sh
.\.env\Scripts\activate.bat
```
 3 - Instale as dependências
```sh
pip install -r requirements.txt
```
Com isso vc está pronto para executar os testes.

## 💻 Execução

Execute os testes que deseja como descrito abaixo:

###   Métodos de Execução

Usando comando:  
 > A montagem desses comandos são explicados no próximo ponto.  
```sh
robot -d ./MeusResultados tests
```
Usando a extensão [Robot Code](https://marketplace.visualstudio.com/items?itemName=d-biehl.robotcode):  
 - É só clicar no ▶️ ao lado esquerdo do teste

## 🔧 Configuração dos testes
### Execução dos testes

Para a execução de um arquivo de teste específico o comando recebe estes argumentos:
```sh
robot tests/Cadastro.robot
```
* `robot` : Comando para execução de um teste no Robot
* `tests/Cadastro.robot` : Path do cenário de teste específico que será executado

Para a execução de um teste específico o comando recebe novos argumentos:
``` robot -d ./MeusResultados -t (Nome do caso de teste sem parênteses) tests```
* `-t` : Comando que indica que um teste específico será executado
* `tests` : Comando para execução de todos os testes que tem o nome  

 > **OBS.:** Se existirem testes em diferentes suítes, mas com esse mesmo nome, todos serão executados.

## 📃 Relatórios
Especificar o diretório dos resultados da execução
```robot -d ./MeusResultados tests```

* `-d` : Comando que indica que os resultados devem ir para um diretório
* `./Meus Resultados` : Especifica o diretório no qual os resultados devem ser salvos

 > **OBS.:** Se não indicarmos um diretório para os relatórios eles serão salvos na raíz do projeto.