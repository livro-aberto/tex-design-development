# Livro Aberto do Ensino Médio - Versão em HTML

Branch do material do ensino médio em versão html. No momento apenas o capítulo de introdução às funções funciona. Outros capítulos serão adicionados aos poucos.

Para compilar é necessário ter a versão mais recente do TeX Live (2021). Ainda não foram feitos testes utilizando MikTeX, dentro da pasta "chapters/funcoes" rode o seguinte comando no terminal:

```
make4ht -x -c livroaberto.cfg funcoes.tex

```


