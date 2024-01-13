# Use a base image with Python and OpenCV
FROM python:3.11.7-slim-bullseye

# Install dependencies, including graphics libraries
RUN apt-get update && \
    apt-get install -y libgl1-mesa-glx libglib2.0-0 libsm6 libxext6 libxrender-dev gcc && \
    pip install --upgrade pip && \
    pip install opencv-python jupyter ipykernel opencv-python mediapipe scikit-learn

RUN useradd -ms /bin/bash jupyter
USER jupyter
WORKDIR home/jupyter

COPY 1-take-images.ipynb .
COPY 2-generate-dataset.ipynb .
COPY 3-train-model.ipynb .
COPY 4-use-model.ipynb .

EXPOSE 8888
ENTRYPOINT ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''"]
