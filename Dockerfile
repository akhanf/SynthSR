FROM tensorflow/tensorflow:2.0.1-gpu

COPY . /SynthSR

RUN pip install --upgrade pip && \
    pip install -r /SynthSR/requirements.txt

    
ENTRYPOINT ["python", "/SynthSR/scripts/predict_command_line.py"]

