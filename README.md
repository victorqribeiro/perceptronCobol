# Perceptron in COBOL

A perceptron written in COBOL.

## About

I've been reading a lot about companies seeking COBOL programmers, so I decided to give it a shot and wrote a perceptron to clissify the (Iris dataset)[https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data].

## How to compile

```bash
cobc -x perceptron.cbl
```

## How to use

Run the program

```bash
./perceptron
```

Then enter 4 values.  
I recomend using one from DATA.DAT for testing purposes.

On DATA.DAT there's a 5 colum by 100 rows table.  
The first 4 colums are features that describe a flower.  
The 5th colum is the flower's label.  
0 = Iris-setosa  
1 = Iris-versicolor  
