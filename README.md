
# 📘 `uftdocs.cls` — Classe LaTeX da UFT

Classe personalizada da Universidade Federal do Tocantins (UFT), versão `v1.6.1`, datada de **2016/11/11**, criada com base na classe `book`.

---

## ⚙️ Opções de Fonte

```latex
\documentclass[10pt]{uftdocs}
\documentclass[11pt]{uftdocs}
\documentclass[12pt]{uftdocs}  % Padrão
```

---

## 📦 Pacotes Carregados

A classe inclui os seguintes pacotes, configurando a codificação, idioma, estilo visual, margens, fontes, entre outros:

- `geometry` – Margens específicas para A4
- `xcolor` – Paleta personalizada de cores institucionais
- `graphicx`, `pdfpages`, `wallpaper` – Suporte a imagens, PDFs e marca d’água
- `babel`, `inputenc`, `fontenc` – Idioma pt-BR e suporte a acentuação
- `enumitem`, `easylist` – Listas
- `titlesec`, `newtxtext`, `helvet`, `newtxmath` – Estilização de texto/títulos
- `hyperref`, `lineno`, `hyphenat` – Hiperlinks, numeração de linhas e hifenização

---

## 🎨 Cores Institucionais

A classe define cores baseadas na identidade visual da UFT:

```latex
azul:    RGB {0, 74, 128}
verde:   RGB {0, 133, 119}
amarelo: RGB {253, 185, 19}
cinza:   RGB {102, 102, 102}
preto:   RGB {0, 0, 0}
branco:  RGB {255, 255, 255}
```

---

## ✳️ Comandos Personalizados

### `\mybox{conteúdo}`

Cria uma caixa estilizada com o conteúdo fornecido.

---

### `\descricao{texto}`

Apresenta um item de descrição com estilo definido.

---

### `\colorsection{cor}{título}`

Define uma **seção com fundo colorido**, usada em relatórios institucionais ou monografias.

---

### `\colorsectionss{cor}{título}`

Variante para subsubseções com fundo colorido.

---

### `\cortado{texto}`

Aplica estilo "cortado" (sublinhado com risco) ao texto — exige `ulem`.

---

### `\artigo`  
### `\paragrafo`

Marcadores que configuram o estilo do capítulo/ seção para **artigos científicos** ou **monografias em parágrafo corrido**. São usados para formatar os títulos.

---

## 🔄 Comandos Redefinidos

- `\renewcommand{\familydefault}{\sfdefault}` — Fonte sans-serif como padrão.
- `\renewcommand{\thechapter}` e `\thesection` — Estilo de numeração alterado.
- `\renewcommand{\baselinestretch}` — Espaçamento entre linhas ajustado.
- `\chapterheadstartvskip` e `\chapterheadendvskip` — Ajustes verticais nos títulos.

---

## 🧱 Ambientes Definidos

### `paragrafos`  
Define um bloco com espaçamento e indentação especial para textos corridos.

```latex
\begin{paragrafos}
Texto corrido com formatação especial.
\end{paragrafos}
```

---

## 🧾 Exemplo de Documento

```latex
\documentclass[12pt]{uftdocs}

\begin{document}

\chapter{Introdução}

\colorsection{azul}{Objetivo}
\begin{paragrafos}
Este documento apresenta os objetivos do trabalho com estilo padronizado da UFT.
\end{paragrafos}

\end{document}
```

---

## 🏷️ Observações

- Ideal para **TCCs, monografias e relatórios institucionais**.
- Integra visual institucional da UFT.
- Para marca d’água, use o pacote `wallpaper` com figuras da UFT.
