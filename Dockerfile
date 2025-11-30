# Gunakan image resmi Ollama terbaru
FROM ollama/ollama:latest

# Download model Gemma 3 otomatis ketika container build
RUN ollama pull gemma3:1b

# Expose port default Ollama
EXPOSE 11434

# Jalankan server Ollama
CMD ["ollama", "serve"]
