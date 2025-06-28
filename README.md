
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

### `\descricao{texto}`

Apresenta um item de descrição com estilo definido.

---

### `\cortado{texto}`

Aplica estilo "cortado" (sublinhado com risco) ao texto — exige `ulem`.

---

### `\artigo`  

## 🧱 Ambientes Definidos

### `paragrafos`  
Define um bloco com espaçamento e indentação especial para textos corridos.

```latex
\begin{paragrafos}
Texto corrido com formatação especial.
\end{paragrafos}
```
