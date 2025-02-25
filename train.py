import pandas as pd
from sklearn.linear_model import LinearRegression
import pickle

df = pd.read_csv("winequality-red.csv")
X = df.drop("quality", axis=1)
y = df["quality"]

model = LinearRegression()
model.fit(X, y)

pickle.dump(model, open("model.pkl", "wb"))
print("Model trained and saved!")

