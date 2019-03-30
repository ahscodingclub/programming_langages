from sklearn import tree
import numpy as np

#height, weight, shoe size
X = [[181,80,44],[177,70,43],[160,60,38],[154,54,37],[166,65,40],[190,90,47],[175,64,39],[177,70,40],[159,55,37],[171,75,42],[181,85,43]]

X = [[1,1,1],[2,2,2],[2,2,2],[2,2,2],[1,1,1], [1,1,1],[1,1,1],[2,2,2],[1,1,1],[2,2,2],[1,1,1]]

Y = ['male', 'female', 'female', 'female', 'male', 'male', 'male', 'female', 'male', 'female', 'male']

#Y = np.array(Y).reshape(-1,1)

clf = tree.DecisionTreeClassifier()

clf = clf.fit(X,Y)

"""
for training, features can be in the form of

[features for sample 1]
[features for sample 2]
.
[features for sample n]

though when providing features for prediction,
they must be provided like

[feature 1]
[feature 2]
[feature 3]

or

np.array([f1,f2,f3]).reshape(1,len([f1,f2,f3]))

"""

prediction = clf.predict(np.array([1,2,1]).reshape(1,3))

print prediction
