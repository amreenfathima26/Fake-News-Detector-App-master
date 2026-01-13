import pickle
import sys
import os

print(f"Python version: {sys.version}")

try:
    print("Loading model.pkl...")
    with open('model.pkl', 'rb') as f:
        model = pickle.load(f)
    print("SUCCESS: model.pkl loaded.")
except Exception as e:
    print(f"ERROR: Failed to load model.pkl: {e}")

try:
    print("Loading tfidfvect.pkl...")
    with open('tfidfvect.pkl', 'rb') as f:
        vect = pickle.load(f)
    print("SUCCESS: tfidfvect.pkl loaded.")
except Exception as e:
    print(f"ERROR: Failed to load tfidfvect.pkl: {e}")
