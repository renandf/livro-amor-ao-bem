# livro-amor-ao-bem

Livro escrito pelo Monge Tyāgo com trecho (poema) original no começo e vários textos budistas traduzidos para o português.

## Exportar o livro localmente

Instalar [Prince](https://www.princexml.com/) via [Brew](https://brew.sh/) (on a Mac)

```
brew install --cask prince
```

Fazer as alterações de conteúdo no arquivo `book.html` e as alterações de estilo no arquivo `pdf-styles.css` e então rodar o seguinte comando para gerar o pdf dentro da pasta `builds`:

```
prince -s pdf-styles.css book.html -o builds/book-test.pdf --no-artificial-fonts
```

Flag `--no-artificial-fonts` (opcional) mostra avisos de caracteres faltando.