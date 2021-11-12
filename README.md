# Livro Aberto do Ensino Médio

Este repositório contém os arquivo necessários para se compilar um capítulo usando o modelo criado para o desenvolvimento do Livro Aberto do Ensino Mëdio, produzido pela Associação Livro Aberto ([umlivroaberto.org](https://umlivroaberto.org/)).

## Download do modelo

É possível fazer o download da versão minimal (Versão 0.8) do arquivo nos seguintes links:
- [Minimal.zip (Windows)](https://github.com/livro-aberto/tex-design-development/raw/master/Minimal/Minimal.zip)
- [Minimal.tar (Linux)](https://github.com/livro-aberto/tex-design-development/raw/master/Minimal/Minimal.tar)

Os arquivos possuem a mesma estrutura básica, mas apenas com os arquivos básicos para fazer a compilação. 

### Figuras

As figuras dos capítulos podem ser baixadas através dos site [download-directory,github.io](https://download-directory.github.io/), basta colocar o link da pasta do seu capítulo presente na pasta Figuras/ deste repositório.

### Estrutura da pasta
A pasta possui a seguinte estrutura:
```
Bibliografia\
chapters\
Figuras\
Fontes\

aluno.tex
livroaberto.sty
livroaberto-professor.sty
modelo.tex
professor.tex
sphinx.sty
```

As pastas ```Bibliografia\```, ```chapters\``` e ```Figuras\``` estão vazias, com excessão de algumas figuras básicas para o funcionamento do modelo. Na pasta ```Fontes\``` estão as fontes que devem ser instaladas para que o ```.pdf``` seja gerado corretamente.

Os arquivos com a extensão ```.sty``` são os arquivos de estilo do modelo e os arquivos ```aluno.tex``` e ```professor.tex``` os textos principais que geram o ```.pdf```  do aluno e do professor, respectivamente. Já o arquivo ```modelo.tex``` é um exemplo de estrutura de um capítulo, com os comandos principais utilizados como exemplo. 

### Editando um capítulo

Para que se possa compilar corretamente os arquivos é necessário:
- Versão atualizada (preferencialmente completa) do [TeX Live](https://www.tug.org/texlive/acquire-netinstall.html) **ou** [MiKTeX](https://miktex.org/download). 
- O editor de texto de sua escolha.
- Compilação em ```xelatex```.

O modo de compilação em ```xelatex``` pode ser colocado como opção em qualquer editor de LaTeX, ou compilando através do PowerShell do Windows (Alt+F+R na pasta principal do projeto) ou o Terminal do Linux (Ctrl+Alt+T na pasta principal do projeto) através do comando
```
latexmk -pdfxe aluno.tex
```
ou
```
latexmk -pdfxe professor.tex
```
dependendo da versão que do modelo que se deseja compilar.

Para editar seu capítulo é necessário colocá-lo na pasta ```chapters\``` e editar o arquivo do aluno ou do professor (dependendo da versão que se deseja gerar) incluindo ou descomentando a linha ```\include{chapters\nomedocapitulo}```. 

Para a bibliografia do capítulo, coloque-a na pasta Bibliografia no formato ```nomedocapitulo_bibliografia.bib``` (formato BibTeX), alterando no final do documento a linha ```\bibliography{../Bibliografia/nomedocapitulo_bibliografia.bib}```. Para gerar o arquivo de bibliografia é necessário rodar no Powershell ou no Terminal, dentro da pasta ```chapters\``` o comando
```
bibtex nomedocapitulo
```

Para demais dúvidas, consultar a documentação do pacote:
- [Versão do aluno.](https://docs.google.com/viewer?url=https://github.com/livro-aberto/tex-design-development/raw/master/Documenta%C3%A7%C3%A3o%20do%20Livro%20Aberto%20do%20Ensino%20M%C3%A9dio.pdf) 
- [Versão do professor](https://docs.google.com/viewer?url=https://github.com/livro-aberto/tex-design-development/raw/master/Documenta%C3%A7%C3%A3o%20do%20Livro%20Aberto%20do%20Ensino%20M%C3%A9dio%20-%20Professor.pdf)

ou mande um e-mail para tarsobcaldas@gmail.com
