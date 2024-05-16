# Start with a TeX Live image
FROM texlive/texlive:latest

# Install necessary packages including ImageMagick and FontAwesome
RUN apt-get update && \
    apt-get install -y imagemagick texlive-fonts-extra

# Set the working directory
WORKDIR /data

# Copy your LaTeX files into the container
COPY . /data

# Build the LaTeX document
RUN pdflatex main.tex

# Set the default command to convert PDF to PNG
CMD ["convert", "-density", "300", "main.pdf", "-quality", "90", "main.png"]
