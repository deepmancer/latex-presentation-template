# 🚀 LaTeX Presentation Template

<div align="center">
  <img src="https://img.shields.io/badge/LaTeX-008080.svg?style=for-the-badge&logo=LaTeX&logoColor=white" alt="LaTeX">
  <img src="https://img.shields.io/badge/Make-6D00CC.svg?style=for-the-badge&logo=Make&logoColor=white" alt="Makefile">
  <img src="https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=for-the-badge&logo=GitHub-Actions&logoColor=white" alt="GitHub Actions">
  <img src="https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge" alt="License">
</div>

<p align="center"><em>Create beautiful, mathematically-rich presentations with ease using LaTeX!</em></p>

Welcome to the **LaTeX Presentation Template**! 🎉 This repository provides a professional, user-friendly template for creating stunning presentations with LaTeX and Beamer. Whether you're an academic, researcher, or professional, this template is tailored to help you create visually appealing and technically rich presentations effortlessly.

---

## 📌 Quick Links

| [Source Code](https://github.com/deepmancer/latex-presentation-template) | [Live Preview](https://deepmancer.github.io/latex-presentation-template/) |

---

## 🖼️ Snapshots

Preview some slides created with this template:

| **Slide Section**       | **Preview**                                                              |
|-------------------------|--------------------------------------------------------------------------|
| **Title Page**          | ![Title Page](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/titlepage.png) |
| **Table of Contents**   | ![Table of Contents](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/table_of_contents.png) |
| **Image Displayed**         | ![Image Slide](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/image_slide.png) |
| **Equations Included**     | ![Equations Slide](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/equations.png) |
| **References Slide**    | ![References Slide](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/references.png) |

---

## ✨ Why This Template?

- **🎨 Sleek and Modern Design**: Impress your audience with clean, professional visuals.
- **⚡ Time-Saving Setup**: Pre-configured settings and ready-to-use slides.
- **🔢 Math-Ready**: Seamless support for equations, symbols, and scientific notations.
- **📚 Integrated Bibliography**: Easily manage references with BibTeX.
- **🛠️ Fully Customizable**: Tailor colors, fonts, layouts, and more to match your style.

---

## 🚀 Getting Started

### ✅ Prerequisites

Ensure you have the following installed on your system:

- A [LaTeX distribution](https://www.latex-project.org/get/) (e.g., TeX Live, MiKTeX, MacTeX)
- [BibTeX](http://www.bibtex.org/)
- A text editor or IDE (e.g., [Visual Studio Code](https://code.visualstudio.com/))

### 📥 Installation

Clone the repository and navigate to the project directory:

```bash
# Clone the repository
git clone https://github.com/deepmancer/latex-presentation-template.git

# Navigate to the directory
cd latex-presentation-template
```

---

## 📖 Usage

### 🖨️ Compiling Your Presentation

Use the included [`Makefile`](Makefile) for compiling your presentation:

```bash
# Compile the presentation
make
```

The compiled PDF will be saved as `main.pdf`.

### 🧹 Cleanup

Clean up auxiliary files:

```bash
make clean
```

Remove all generated files, including the PDF:

```bash
make cleanall
```

---
## 🎨 Customization

### 🔄 Update Metadata

Edit [`main.tex`](main.tex) to update the presentation’s metadata:

```latex
\newcommand{\paperTitle}{Full Presentation Title}
\newcommand{\paperAuthors}{Your Name}
\newcommand{\paperAuthorsAffiliation}{Your Institution}
\newcommand{\paperPublishedYear}{Year}
\newcommand{\paperConference}{Event or Conference}
\newcommand{\presentor}{Your Name}
\newcommand{\presentationDate}{Month Year}

\title[Short Title]{\paperTitle}
\author{\presentor}
\institute{\paperAuthorsAffiliation}
\date[\presentationDate]{\paperConference, \paperPublishedYear}
```

### 🎨 Modify Theme Settings

Adjust colors, fonts, and layouts in the configuration files:

- [`config/preamble.tex`](./config/preamble.tex): Configure packages, colors, dimensions, and hyperlink settings.
- [`config/frame-settings.tex`](./config/frame-settings.tex): Define slide headline, title, and footer templates.
- [`config/commands.tex`](./config/commands.tex): Create custom commands to use in your slides.


### 📄 Add Slides

To add new slides, you have two options:

1. **Directly in `main.tex`**:

   Create new slides directly in the `main.tex` file:

   ```latex
   \begin{frame}{Slide Title}
       % Your slide content here
   \end{frame}
   ```

2. **Using separate files in the `slides/` directory**:

   Create new slide files in the `slides/` directory and include them in `main.tex`:

   ```latex
   \input{slides/your-slide.tex}
   ```

   For example, to add a new slide section, create a file named `your-slide.tex` in the `slides/` directory with the following content:

   ```latex
   \begin{frame}{Your Slide Title}
       % Your slide content here
   \end{frame}
   ```

   Then, include this file in `main.tex`:

   ```latex
   \include{slides/your-slide}
   ```


### 🖼️ Add Figures

Place your images in the [`assets/figures`](./assets/figures) directory and reference them in your slides:

```latex
\begin{figure}
    \includegraphics[width=\textwidth]{assets/figures/your-image.png}
    \caption{Your image caption}
    \label{fig:Your Image Label}
\end{figure}
```

### 📚 Manage References

Add references to [`references.bib`](references.bib) and cite them in your slides using:

```latex
\cite{your-reference}
```

It will be automatically added to the bibliography slide.

---

## 📁 Project Structure

| **File/Directory**         | **Purpose**                                                        |
|----------------------------|--------------------------------------------------------------------|
| `main.tex`                 | Main LaTeX file for the presentation.                             |
| `Makefile`                 | Automates build and cleanup tasks.                               |
| `config/`                  | Configuration files for themes and settings.                     |
| `assets/`                  | Directory for figures and other assets.                          |
| `slides/`                  | Additional slides or sections.                                   |
| `references.bib`           | Bibliography entries.                                            |
| `LICENSE`                  | Project license information.                                     |

---

## 📄 License

This project is licensed under the [MIT License](LICENSE). You’re free to use, modify, and distribute the template as per the license terms.

---

## ⭐ Support the Project

If you find this template useful, consider:

- Starring this repository on GitHub ⭐
- Forking the project to make your own version 🍴
- Sharing it with your peers and colleagues 📢

---

Happy TeXing! 🎉
