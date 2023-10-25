
import sys
import time
import argparse
import numpy as np
import tensorflow as tf

def main():

    # vars
    batch_size = 16
    samples = 16*10
    epochs = 3

    # dataset
    data = np.random.uniform(size=[samples, 224, 224, 3])
    target = np.random.uniform(size=[samples, 1], low=0, high=999).astype("int64")
    dataset = tf.data.Dataset.from_tensor_slices((data, target))
    dataset = dataset.batch(batch_size)

    # define model
    model = tf.keras.applications.ResNet50(weights=None)
    loss = tf.keras.losses.SparseCategoricalCrossentropy()
    optimizer = tf.optimizers.SGD(0.01)
    model.compile(optimizer=optimizer, loss=loss)

    # fit
    callbacks = []
    model.fit(dataset,
              callbacks=callbacks,
              epochs=epochs,
              verbose=1)

if __name__ == "__main__":
    main()
