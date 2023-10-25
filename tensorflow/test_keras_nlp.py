import keras_nlp

gpt2_lm = keras_nlp.models.GPT2CausalLM.from_preset("gpt2_base_en")
gpt2_lm.generate("My trip to Yosemite was", max_length=200)
