---
license: other
license_name: flux-1-dev-non-commercial-license
license_link: https://huggingface.co/black-forest-labs/FLUX.1-dev/blob/main/LICENSE.md
language:
- en
tags:
- flux
- diffusers
- lora
base_model: "black-forest-labs/FLUX.1-dev"
pipeline_tag: text-to-image
instance_prompt: SML
---

# Sml

Trained on Replicate using:

https://replicate.com/ostris/flux-dev-lora-trainer/train


## Trigger words
You should use `SML` to trigger the image generation.


## Use it with the [🧨 diffusers library](https://github.com/huggingface/diffusers)

```py
from diffusers import AutoPipelineForText2Image
import torch

pipeline = AutoPipelineForText2Image.from_pretrained('black-forest-labs/FLUX.1-dev', torch_dtype=torch.float16).to('cuda')
pipeline.load_lora_weights('vaikl/SML', weight_name='lora.safetensors')
image = pipeline('your prompt').images[0]
```

For more details, including weighting, merging and fusing LoRAs, check the [documentation on loading LoRAs in diffusers](https://huggingface.co/docs/diffusers/main/en/using-diffusers/loading_adapters)
