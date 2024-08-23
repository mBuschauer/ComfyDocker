# Use the ROCm PyTorch image as the base image
FROM rocm/pytorch:latest

# Set the working directory inside the container
RUN mkdir -p /home/ubuntu/

# RUN pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
RUN pip uninstall torch torchvision torchaudio -y

RUN pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/rocm6.1

RUN pip install torch torchsde torchvision torchaudio einops "transformers>=4.28.1" "tokenizers>=0.13.3" sentencepiece "safetensors>=0.4.2" aiohttp pyyaml Pillow scipy tqdm psutil "kornia>=0.7.1" spandrel soundfile

WORKDIR /home/ubuntu/
