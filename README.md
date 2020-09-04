# Perceptron in COBOL

A [perceptron](https://en.wikipedia.org/wiki/Perceptron) written in COBOL.

## About

I've been reading a lot about companies seeking COBOL programmers, so I decided to give it a shot and wrote a perceptron to clissify the [Iris dataset](https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data).

## How to install Cobol

```bash
sudo apt install open-cobol
```

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
You can use 5.8 2.5 5.2 1.4 for testing purpose. The result should be one (Iris-versicolor).


On DATA.DAT there's a 5 colum by 100 rows table.  
The first 4 colums are features that describe a flower.  
The 5th colum is the flower's label.  
0 = Iris-setosa  
1 = Iris-versicolor  
