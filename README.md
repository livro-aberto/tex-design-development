# tex-design-development

Working place to the  LaTeX template of HighSchool project.


O objetivo aqui é gerar um template em LaTeX para o livro do estudante, que compile os três arquivos estatistica1.tex, estatistica2.tex e probabilidade1.tex sem "erros" ou "avisos". 

Estratégia de atuação:

1. Retirar todo o material destinado ao professor dos arquivos. Ele geralmente aparece com o código
\begin{sphinxadmonition}{note}{Para o professor}.

2. Incluir os comandos corretos para os ambientes. São eles:
    
    Ambientes:
    \begin{task}{título} %atividade
    \begin{reflection} %Para refletir
    \begin{knowledge} %Você sabia?
    \begin{research} %Para pesquisar
    \begin{evaluation} %Autoavaliação
    \begin{example}{título} %Exemplo
    \begin{observation}{título} %Observação - caixa parda que utilizamos sem título, na maioria das vezes.
    
    Seções:
    \explore{título} %Explorando o assunto
    \arrange{título} %
    \practice{título} %Praticando
    \know{título} % Para saber mais
    \exercise %Exercícios

3. Buscar os Erros em estatistica1.tex e corrigí-los.

4. Buscar os Warnings em estatística1.tex e resolver.

5. Incluir os outros dois arquivos um a um e repetir o procedimento acima, até que os três compilem sem erro.

6. Então passaremos a estudar o livro do professor.


# Installation

To compile this you need to first install latex. In Ubuntu or Debian:

    sudo apt-get install texlive texlive-extra-utils texlive-lang-portuguese

...
