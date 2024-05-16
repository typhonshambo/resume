# Start with a TeX Live image
FROM texlive/texlive:latest

# Install necessary packages including ImageMagick and FontAwesome
RUN apt-get update && \
    apt-get install -y imagemagick texlive-fonts-extra

# Set the working directory (adjust if needed)
WORKDIR /data/latex

# Copy main.tex directly
COPY main.tex /data/latex

# Build the LaTeX document
RUN pdflatex main.tex

# Convert PDF to PNG (executed outside the container for more control)
# (Optional: Remove CMD if you execute this in your workflow)
# CMD ["convert", "-density", "300", "main.pdf", "-quality", "90", "main.png"]
