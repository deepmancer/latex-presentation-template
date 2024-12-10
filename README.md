# 🚀 LaTeX Presentation Template

<div align="center">
<img src="https://img.shields.io/badge/LaTeX-008080.svg?style=for-the-badge&logo=LaTeX&logoColor=white" alt="LaTeX">
<img src="https://img.shields.io/badge/Make-6D00CC.svg?style=for-the-badge&logo=Make&logoColor=white" alt="Makefile">
<img src="https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge" alt="License">
<img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=for-the-badge" alt="PRs Welcome">
</div>


Welcome to the **LaTeX Presentation Template**! 🎉 This repository provides a professional, customizable, and user-friendly template for creating stunning presentations with LaTeX and Beamer. Whether you're an academic, researcher, or professional, this template is designed to simplify and enhance your presentation creation process.

> Create beautiful, mathematically-rich presentations with ease using LaTeX!

---

| **Source Code** | **Website** |
|:-----------------|:------------|
| <a href="https://github.com/deepmancer/latex-presentation-template" target="_blank">github.com/deepmancer/latex-presentation-template</a> | <a href="https://deepmancer.github.io/latex-presentation-template/" target="_blank">deepmancer.github.io/latex-presentation-template</a> |

---

## 🖼️ Snapshots
| **Section**       | **Slide**                                                                 |
|:------------------:|:-------------------------------------------------------------------------:|
| **Title Page**     | ![Title Page](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/titlepage.png)                                |
| **Middle Slides**  | ![Content Slide](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/content.png)                               |
| **References**| ![References Slide](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/references.png)                        |

---

## ✨ Why Use This Template?

- **🎨 Modern and Elegant Design**: Impress your audience with a clean, minimalist look.
- **⚡ Time-Saving**: Pre-configured settings and ready-to-use slides to get you started quickly.
- **🔢 Math and Symbols Support**: Easily include mathematical equations and scientific notations.
- **📚 Seamless Bibliography Management**: Integrate references with BibTeX effortlessly.
- **🛠️ Fully Customizable**: Adjust colors, fonts, layouts, and more to suit your style.

---

## 🚀 Getting Started

Follow these simple steps to set up the template and start creating your presentation.

### ✅ Prerequisites

Ensure the following are installed on your system:

- [LaTeX distribution](https://www.latex-project.org/get/) (e.g., TeX Live)
- [BibTeX](http://www.bibtex.org/)
- A text editor or IDE (e.g., [Visual Studio Code](https://code.visualstudio.com/))

### 📥 Installation

Clone the repository:

```bash
git clone https://github.com/deepmancer/latex-presentation-template.git
```

Navigate to the project directory:

```bash
cd latex-presentation-template
```

---

## 📖 Usage

### 🖨️ Compiling the Presentation

Use the provided [`Makefile`](Makefile) to compile your presentation:

```bash
make
```

The compiled presentation will be saved as [`main.pdf`](main.pdf).

### 🧹 Cleaning Up

Remove auxiliary files generated during compilation:

```bash
make clean
```

Remove all generated files, including the PDF:

```bash
make cleanall
```

---

## 🎨 Customization

Tailor the template to your needs with these simple steps:

### 🔄 Updating Metadata

Edit [`main.tex`](main.tex) to modify the title, author, institute, and date:

```latex
\title[Short Title]{Full Title of the Presentation}
\author{Your Name}
\institute{Your Institution}
\date[Month Year]{Event or Conference, Month Year}
```

### 🎨 Modifying Theme Settings

Adjust colors, fonts, and layouts in:

- [`config/preamble.tex`](./config/preamble.tex)
- [`config/frame-settings.tex`](./config/frame-settings.tex)

### 📄 Adding Slides

Insert new slides in the `Main Content` section of [`main.tex`](./main.tex):

```latex
\begin{frame}{Slide Title}
    % Your content here
\end{frame}
```

Alternatively, create new slides in the [`slides/`](./slides/) directory and include them in [`main.tex`](./main.tex):

```latex
\input{slides/your-slide.tex}
```

### 🖼️ Including Figures and Images

Place images in the [`assets/figures`](./assets/figures) directory and reference them in your slides:

```latex
\begin{figure}
    \includegraphics[width=\linewidth]{assets/figures/your-image.png}
    \caption{Your image caption}
\end{figure}
```

### 📚 Managing References

Add references in [`references.bib`](references.bib) and cite them using:

```latex
\cite{your-reference}
```

---

## 📁 Project Structure

| File/Directory       | Purpose                                                   |
|----------------------|-----------------------------------------------------------|
| [`main.tex`](./main.tex)           | Main LaTeX file for the presentation.                     |
| [`Makefile`](./Makefile)           | Automates compilation and cleanup tasks.                  |
| [`config/`](./config)            | Contains configuration files for theme and settings.      |
| [`assets/`](./assets)            | Directory for figures and presentation assets.            |
| [`slides/`](./slides)            | Additional slides or content sections.                    |
| [`references.bib`](./references.bib)     | Bibliography entries.                                     |
| [`titlepage.tex`](./titlepage.tex)      | Custom title page layout.                                 |
| [`LICENSE`](./LICENSE)            | License information for this project.                     |


---

## 🤝 Contributing

We welcome contributions! Whether it's reporting a bug, suggesting a feature, or submitting a pull request, your help is appreciated.

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m 'Add some feature'`.
4. Push to the branch: `git push origin feature-name`.
5. Submit a pull request!

---

## 📄 License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as per the license terms.

---

## ⭐ Show Your Support

If you find this template helpful, please consider:

- Giving this repository a ⭐ on GitHub!
- Sharing it with your colleagues and peers.
- Forking the repository to customize and enhance it further.

---

Happy TeXing! 🤖
