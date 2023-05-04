# 💬 Robot Framework

Esse projeto contém o Teste de Seleção QA Automatizado JR da PrimeControl usando o framework Robot.

## 💻 Pré-requisitos
Antes de começar, verifique se você atendeu aos seguintes requisitos:

## ▶️ Execute em sua máquina

### Instale o Python
Robot Framework requer [Python](https://www.python.org/downloads/) v2.7+ para rodar.

### Instale as dependências:

```sh
pip install robotframework
pip install robotframework-seleniumlibrary
```
### Faça o download do driver:
Você deve ter o driver (Chromedriver, Geckodriver) na pasta raiz do projeto, lembrando que a versão do driver deve ser de acordo com a versão do seu navegador!

Neste exemplo eu estarei usando o driver do Chrome.
Link de download -> https://chromedriver.chromium.org/downloads

### Extensões
Vamos instalar as extensões que irão nos auxiliar na criação e execução dos testes:  

| 🧩 Extensão |💾 Download|
| ------ | ------ |
| Robot Framework Language Server | https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp |
| Material Icon Theme (Opcional) | https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme |
| Dracula Officia (Opcional) | https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula |
| GitLens — Git supercharged (Opcional) | https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens |

## 🚀 Passo a passo
### Clone o projeto
```git clone https://github.com/AmorimGabrielCE/TesteQA-Automatizado-JR.git```

## 💻 Execução

Execute os testes que deseja como descrito abaixo:

###   Métodos de Execução

Usando comando:  
 > A montagem desses comandos são explicados no próximo ponto.  
```sh
robot -d ./results tests
```
Usando a extensão Language Server:  
 - É só clicar no ▶️ ao lado esquerdo do teste

## 🔧 Configuração dos testes
### Execução dos testes

Para a execução de um arquivo de teste específico o comando recebe estes argumentos:
```sh
robot -d ./results tests/Cadastro.robot
```
* `robot` : Comando para execução de um teste no Robot
* `-d` : Comando que indica que os resultados devem ir para um diretório específico
* `./results` : Especifica o diretório no qual os resultados devem ser salvos
* `tests/Cadastro.robot` : Path do cenário de teste específico que será executado

Para a execução de um teste específico o comando recebe novos argumentos:
``` robot -d ./results -t (Nome do caso de teste sem parênteses) tests```
* `-t` : Comando que indica que um teste específico será executado
* `tests` : Comando para execução do teste

 > **OBS.:** Se existirem testes em diferentes suítes, mas com esse mesmo nome, todos serão executados.


#### Executando por TAGS:

```robot -d ./results -i (Nome da Tag sem parênteses) tests```

* `-i` : Indica que devem ser executados apenas os testes cuja a Tag seja (Nome da Tag).

Assim, posso rodar comandos solicitando que sejam executados somente testes identificados com determinada Tag.

Esses são alguns comandos básicos possíveis de execução. Para saber outras possibilidades e comandos mais avançadas, consulte:  
[RobotFrameworkUserGuide](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#configuring-execution)

## 📃 Relatórios
Especificar o diretório dos resultados da execução
```robot -d ./results tests```

* `-d` : Comando que indica que os resultados devem ir para um diretório
* `./results` : Especifica o diretório no qual os resultados devem ser salvos

 > **Obs.:** Se não indicarmos um diretório para os relatórios eles serão salvos na raíz do projeto.