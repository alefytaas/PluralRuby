# PluralRuby

Este projeto é uma extensão da classe `String` em Ruby, que adiciona um método para pluralizar palavras em português. A extensão trata vários casos comuns de pluralização em português, como palavras terminadas em 'x', 's', 'z', 'h', 'r', 'm', 'l', vogais e 'ão'.

## Funcionalidades

- **Método `plural`**: Adiciona a funcionalidade de pluralização para strings em português.

## Estrutura do Projeto

- `plural.rb`: Contém a definição da classe `String` estendida com o método `plural`.
- `plural_spec.rb`: Contém testes para verificar o funcionamento do método `plural`.

## Como Executar

1. Certifique-se de ter o [Ruby](https://www.ruby-lang.org/en/downloads/) e o [RSpec](https://rspec.info/) instalados no seu sistema.
2. Clone este repositório para o seu diretório local:
    ```sh
    git clone https://github.com/alefytaas/PluralRuby.git
    ```
3. Navegue até o diretório do projeto:
    ```sh
    cd PluralRuby
    ```
4. Execute o script `plural.rb`:
    ```sh
    ruby plural.rb
    ```
5. Para executar os testes, use o comando:
    ```sh
    rspec plural_spec.rb
    ```


