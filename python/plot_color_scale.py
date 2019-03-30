import matplotlib.pyplot as plt

color_1 = [20/255, 47/255, 189/255]    
color_2 = [19/255, 114/255, 188/255]
color_3 = [19/255, 181/255, 187/255]
color_4 = [18/255, 187/255, 126/255]
color_5 = [18/255, 186/255, 58/255]
color_6 = [111/255, 185/255, 17/255]
color_7 = [178/255, 184/255, 17/255]
color_8 = [184/255, 123/255, 16/255]
color_9 = [183/255, 56/255, 16/255]
color_10 = [183/255, 15/255, 43/255]

c_1 = [1]
c_2 = [1]
c_3 = [1]
c_4 = [1]
c_5 = [1]
c_6 = [1]
c_7 = [1]
c_8 = [1]
c_9 = [1]
c_10 = [1]

X = 55

plt.bar(X, c_1, color = color_1)
plt.bar(X, c_2, color = color_2, bottom = 1)
plt.bar(X, c_3, color = color_3, bottom = 2)
plt.bar(X, c_4, color = color_4, bottom = 3)
plt.bar(X, c_5, color = color_5, bottom = 4)
plt.bar(X, c_6, color = color_6, bottom = 5)
plt.bar(X, c_7, color = color_7, bottom = 6)
plt.bar(X, c_8, color = color_8, bottom = 7)
plt.bar(X, c_9, color = color_9, bottom = 8)
plt.bar(X, c_10, color = color_10, bottom = 9)

plt.tick_params(axis='x',which='both',bottom=False,top=False,labelbottom=False)
plt.tick_params(axis='y',which='both',left=False,right=False,labelleft=False)

axes= plt.axes()

#axes.set_yticks([50,60,70,400,5,6,7,8,9,10])

plt.show()
