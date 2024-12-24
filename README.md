# 🚀 LaTeX Presentation Template

<div align="center">
  <img src="https://img.shields.io/badge/LaTeX-008080.svg?style=for-the-badge&logo=LaTeX&logoColor=white" alt="LaTeX">
  <img src="https://img.shields.io/badge/Make-6D00CC.svg?style=for-the-badge&logo=Make&logoColor=white" alt="Makefile">
  <img src="https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=for-the-badge&logo=GitHub-Actions&logoColor=white" alt="GitHub Actions">
  <img src="https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge" alt="License">
</div>

<p align="center"><em>Create beautiful, mathematically rich presentations easily with LaTeX and Beamer!</em></p>

Welcome to the **LaTeX Presentation Template**! This repository provides a modern, user-friendly setup for creating professional presentations. Whether you're an academic, researcher, or professional, this template equips you with a streamlined workflow for visually appealing and technically robust slides.

---

## 📌 Quick Links

| [Source Code](https://github.com/deepmancer/latex-presentation-template) | [Live Preview](https://deepmancer.github.io/latex-presentation-template/) | [Overleaf](https://www.overleaf.com/7371632237xhksjncgphnf#32b38d) |

---

## 🖼️ Sample Slides

Below are a few slide previews to showcase the template’s design:

| **Slide Section**         | **Preview**                                                                               |
|---------------------------|-------------------------------------------------------------------------------------------|
| **Title Page**            | ![Title Page](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/titlepage.png) |
| **Table of Contents**     | ![Table of Contents](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/table_of_contents.png) |
| **Image Example**         | ![Image Slide](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/image_slide.png) |
| **Equations Example**             | ![Equations Slide](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/equations.png) |
| **References**            | ![References Slide](https://raw.githubusercontent.com/deepmancer/latex-presentation-template/main/assets/samples/references.png) |

---

## ✨ Why This Template?

- **🎨 Sleek and Modern Design**: Impress your audience with clean, professional visuals.
- **⚡ Time-Saving Setup**: Pre-configured settings and ready-to-use slides.
- **🔢 Math-Ready**: Seamless support for equations, symbols, and scientific notations.
- **📚 Integrated Bibliography**: Easily manage references with BibTeX.
- **🛠️ Fully Customizable**: Tailor colors, fonts, layouts, and more to match your style.

---

## 🚀 Getting Started

### 🖥️ Local Setup

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/deepmancer/latex-presentation-template.git
   cd latex-presentation-template
   ```

2. **Install Required Tools**:
   - Install a [LaTeX distribution](https://www.latex-project.org/get/) (e.g., TeX Live, MiKTeX, MacTeX).

3. **Compile Your Presentation**:

     ```bash
     make # Generates the PDF
     ```

### 🌿 Overleaf Setup

1. **Download the ZIP**:
   - Download the repository as a ZIP file.

2. **Upload to Overleaf**:
   - Upload the ZIP file to your project on [Overleaf](https://www.overleaf.com/project).

3. **Edit and Compile**:
   - Update the template with your details. Overleaf compiles the document automatically!

---

## 🎨 Customization

### 🔄 Update Metadata

Edit [`main.tex`](main.tex) to update the presentation’s metadata:

```tex
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

### 🏷️ Customize the Title Page

- **Background Image**  
  In [`titlepage.tex`](./slides/titlepage.tex), you can modify the background image:

    ```tex
    \setbeamertemplate{title page}{
        \begin{picture}(0,0)
            \put(-\textmargin, \dimexpr -\paperheight*6/10 \relax){
                \includegraphics[width=\paperwidth]{assets/presentation-theme/title-slide-background.png}
            }
            % Adjust positioning and size of the title text or add custom elements here
        \end{picture}
    }
    ```

- **Title Page Content**  
  Update the content in [`titlepage.tex`](./slides/titlepage.tex):

    ```tex
    \setbeamertemplate{title page}{
        \begin{picture}(0,0)
            % Code for background image
            \put(-\textmargin + 7mm, -75pt){%
                \begin{minipage}[b][4.5cm][t]{0.8\textwidth}
                    \raggedright
                    \color{white}
                    \usebeamerfont{title}{\paperTitle}\\[0.4cm]
                    \usebeamerfont{subtitle}{\paperAuthors}\\[0.2cm]
                    \usebeamerfont{institute}{\paperConference, \paperPublishedYear}\\[2.5cm]
                    \usebeamerfont{subtitle}{\sc\presentor}\\[0.2cm]
                    \usebeamerfont{date}\small{\presentationDate}
                \end{minipage}
            }
        \end{picture}
    }
    ```

### 🎨 Modify Theme Settings

- **General Configuration**  
  Within [`config/preamble.tex`](./config/preamble.tex), you’ll find settings for packages, colors, figures, tables, and hyperlinks.

    ```tex
    \usepackage[
        backend=biber,
        style=ieee,                    % Citation style (e.g., ieee, apa, mla)
    ]{biblatex}
    \addbibresource{references.bib}    % Bibliography file
    ```

    ```tex
    \definecolor{myBlue}{RGB}{0,33,71}
    ```

- **Slide Templates**  
  Inside [`config/frame-settings.tex`](./config/frame-settings.tex), you can define how each slide’s title and footer appear:

    ```tex
    \setbeamertemplate{frametitle}{
        % Code for slide title
    }
    ```

    ```tex
    \setbeamertemplate{footline}{
        % Code for slide footer
            \hfill
            {\usebeamercolor[fg]{presentor in head/foot}\usebeamerfont{presentor in head/foot}\presentor}
            \hfill
            {\usebeamercolor[fg]{date in head/foot}\usebeamerfont{date in head/foot}\presentationDate}
            \hfill
            {\usebeamercolor[fg]{page number in head/foot}\usebeamerfont{page number in head/foot}\usebeamertemplate{page number in head/foot}}
            \hfill
        % Code for slide footer
    }
    ```

- **Custom Commands**  
  [`config/commands.tex`](./config/commands.tex) holds additional commands you can utilize:

    ```tex
    \newcommand{\newSection}[1]{
        % Code for adding a new page when a new section starts
        \section{#1}
    }
    ```

### 📄 Add Slides

To add new slides, you have two options:

1. **Directly in `main.tex`**:

   Create new slides directly in the `main.tex` file:

   ```tex
   \begin{frame}{Slide Title}
       % Your slide content here
   \end{frame}
   ```

2. **Using separate files in the `slides/` directory**:

   Create new slide files in the `slides/` directory and include them in `main.tex`:

   ```tex
   \input{slides/your-slide.tex}
   ```

   For example, to add a new slide section, create a file named `your-slide.tex` in the `slides/` directory with the following content:

   ```tex
   \begin{frame}{Your Slide Title}
       % Your slide content here
   \end{frame}
   ```

   Then, include this file in `main.tex`:

   ```tex
   \include{slides/your-slide}
   ```

### 🖼️ Add Figures

Place your images in the [`assets/figures`](./assets/figures) directory and reference them in your slides:

```tex
\begin{figure}
    \includegraphics[width=\textwidth]{assets/figures/your-image.png}
    \caption{Your image caption}
    \label{fig:Your Image Label}
\end{figure}
```

### 📚 Manage References

Add references to [`references.bib`](./references.bib) and cite them in your slides:

```tex
\cite{your-reference}
```

They will appear in your bibliography slide automatically.

---

## 📁 Project Structure

| **File/Directory** | **Purpose**                                                     |
|--------------------|-----------------------------------------------------------------|
| `main.tex`         | Main file for the presentation                                  |
| `references.bib`   | Bibliography entries                                            |
| `config/`          | Theme and settings configuration files                          |
| `assets/`          | Folder for images and other media assets                        |
| `slides/`          | Optional directory for separate slide sections                  |
| `Makefile`         | Automates build and cleanup tasks                               |

---

## 📄 License

This project is available under the [MIT License](LICENSE). Feel free to use, modify, and distribute under these terms.

---

## ⭐ Support the Project

Consider the following if you find this template helpful:

- Star this repository on GitHub ⭐  
- Fork the project to create your own variant 🍴  
- Share it with peers and colleagues 📢  

---

Happy TeXing! 🎉
