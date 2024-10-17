# livro-amor-ao-bem

Livro escrito pelo Monge Tyāgo com trecho (poema) original no começo e vários textos budistas traduzidos para o português.

## Setup

Instalar [Prince](https://www.princexml.com/) via [Brew](https://brew.sh/) (on a Mac)

```
brew install --cask prince
```

## Exportar o livro localmente

Fazer as alterações de conteúdo nos arquivos `html` dentro da pasta `content` e as alterações de estilo no arquivo `pdf-styles.css` na pasta raiz. Adicione qualquer novo subcapítulo como um arquivo `html` separado (exemplos dentro da pasta `content/p-buda`) e adicione o `path` no arquivo `book-compile-list.txt`.

**Para exportar o pdf:**

1. Primeiro faça a compilação do do arquivo `builds/book.html` concatenando o conteúdo de todos os arquivos listados dentro de `book-compile-list.txt`. Use o comando:
```
bash book-compile.sh `< book-compile-list.txt` > builds/book.html
```

2. Com o arquivo `book-compile-list.txt` compilado, rode o seguinte comando para gerar o arquivo pdf:
```
prince -j -s pdf-styles.css builds/book.html -o builds/book-test.pdf --no-artificial-fonts
```

Explicação de cada *flag*:
- `-j` = `--javascript` habilita JavaScript para criação das `Notas` (`notas.html`)
- `-s` aplica a estilização definida pelo arquivo em sequência (`pdf-styles.css`)
- `-o` define o "output" que no caso está definido como `builds/book-test.pdf`
- `--no-artificial-fonts` (opcional) mostra avisos de caracteres faltando.