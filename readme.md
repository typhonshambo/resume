# Resume 📌
you can check [main.pdf](./main.pdf) which is the latest build of my resume


# LaTeX Resume Builder with Docker

This project allows me to build my resume in PDF and PNG formats using LaTeX inside a Docker container. This ensures a consistent environment for building my resume, regardless of the host operating system.



## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop) installed on your system.

## Project Structure

- `Dockerfile`: Contains the instructions to create the Docker image.
- `resume.tex`: my LaTeX resume source file.

## Getting Started

Follow these steps to build and run the Docker image to generate resume.

### 1. Clone the Repository

If you haven't already, clone this repository to your local machine:

```sh
git clone https://github.com/yourusername/latex-resume-docker.git
cd latex-resume-docker
```

### 2. Build the Docker Image
Build the Docker image with the following command:
```sh
docker build -t latex-resume .
```
This process can take some time, especially the first time, as it needs to download and install all the required packages.

### 3. Compile the LaTeX Document to PDF
Run the following command to compile your `resume.tex` file to a PDF:
```sh
docker run --rm -v $(pwd):/data latex-resume pdflatex resume.tex
```

### 4. Convert PDF to PNG
```sh
docker run --rm -v $(pwd):/data latex-resume convert -density 300 resume.pdf -quality 90 resume.png
```
This command uses ImageMagick's convert tool to generate a high-quality PNG from the PDF.