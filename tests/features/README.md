Ambiente:
- Ruby (versão utilizada para criação do projeto - 3.1.2p20) com DevKit
https://rubyinstaller.org/downloads/

- Bundler (gem install bundler)

- Chromedriver configurado no path:
Faça o download em https://chromedriver.chromium.org/downloads (baixar de acordo com a versão do seu Chrome), descompacte em uma pasta (ex.: C:\chromedriver)


- IDE: VSCode
--- Extensões úteis:
vscode-icons
Cucumber (Gherkin) Full Support
Ruby

- Roteiro para UTILIZAR o projeto:
1. Fazer o clone do projeto
2. Abrir a pasta no VSCode
3. Abrir o terminal (do VSCode, ou o da sua preferência e navegar até a pasta do projeto) e rodar o comando 'bundle install'
4. Para rodar os cenários, utilizar o comando de run do Cucumber:
  ex.: 
  - rodar todos os cenários: 'cucumber'
  - rodar uma feature: cucumber features/specs/01-navegar_site.feature
  - rodar um cenário pela tag: cucumber -t @navegar_site
  - rodar todos os cenários por tag: cucumber -t @regressivo

- Roteiro para RECRIAR o projeto:
1. Abrir uma pasta vazia no VSCode
2. Criar o arquivo Gemfile (sem extensão) e incluir:

source 'https://rubygems.org'

gem 'capybara'
gem 'cucumber' (gem 'cucumber', '~> 3.1.0')
gem 'rspec'
gem 'selenium-webdriver'
gem 'site_prism'
gem 'cpf_faker'
gem 'faker'

3. Abrir o terminal (do VSCode, ou o da sua preferência e navegar até a pasta do projeto) e rodar o comando 'bundle install'
4. Rodar o comando 'cucumber --init'

- Extras:
  - Configurações do driver no arquivo env.rb
  - para configurar o relatório do cucumber, criar o arquivo cucumber.yml na pasta raiz
  - As pages devem estender de SitePrism:Page para utilizar os recursos do SitePrism
