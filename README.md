# Fractals
1. I have coded two fractal generators in Processing (a java animations library), my code is a bit messy but i think it will be readable enough. You can run the code in the Processing Developement Environment (PDE) itself.  
2. It has very basic . If you find a bug you can open a pull request

# Prerequisities
1. You should have Java installed.
2. You should also download and install the [Processing Developement Environment](https://processing.org/)

# How the program works

1. The One called "fractal_trees" Generates a fractal whoes angle between the lines is determined by the relative mouse location. It generates the full fractal at once  
Angle between lines PI/6:  
![](https://github.com/Divy1211/Fractals/blob/master/fractal_trees/pic0.png)  
Angle between lines PI/2  
![](https://github.com/Divy1211/Fractals/blob/master/fractal_trees/pic1.png)  

2. The One called "fractal_trees_oo" is object oriented and generates tree level by level on clicking. The angle between lines **in each successive layer** is determined by relative mouse location.  
Angle between lines PI/6  
![](https://github.com/Divy1211/Fractals/blob/master/fractal_trees_oo/pi_6.gif)  
Angle between lines PI/2  
![](https://github.com/Divy1211/Fractals/blob/master/fractal_trees_oo/pi_2.gif)  
Mixed angles  
![](https://github.com/Divy1211/Fractals/blob/master/fractal_trees_oo/mixed.gif)  
