package me.oskarmendel;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class TrippyJuliaFractals {
	//Our Julia function: f(x) = z^2 (- 0.221 - 0.713) Were () is the constant.
	static final double REALNUM = -0.4;
	static final double IMNUM = 0.6;
	static final double MINRANGE = -1;
	static final double MAXRANGE = 1;
	static final int WIDTH = 500;
	static final int HEIGHT = 400;
	static final int THRESHOLD = 2;
	static final int MAXITERATIONS = 128;
	
	static class ComplexNumber {
		double real;
		double imaginary;
		
		public ComplexNumber(double re, double im) {
			this.real = re;
			this.imaginary = im;
		}
		
		public void applyF(){
			double re = real*real - imaginary*imaginary + REALNUM;
			double im = 2*real*imaginary + IMNUM;
			this.real = re;
			this.imaginary = im;
		}
		
		public double getAbs() {
			return Math.sqrt(imaginary*imaginary + real*real);
		}
	}
	
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		BufferedImage image = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
		
		int x = 0;
		int y = 0;
		
		//Looping through each pixel making complex numbers for all spaces
		for (y = 0; y < HEIGHT; y++){
			for (x = 0; x < WIDTH; x++) {
				double a = x*(MAXRANGE-MINRANGE) / WIDTH + MINRANGE;
				double b = y*(MAXRANGE-MINRANGE) / HEIGHT + MINRANGE;
				
				//Num of iterations
				int i;
				
				ComplexNumber cn = new ComplexNumber(a, b);
				//Starting iteration process
				for (i = 0; i < MAXITERATIONS; i++){
					cn.applyF();
					if(cn.getAbs()>THRESHOLD) {
						break;
					}
				}
				System.out.println("X: " + x + " Y: " + y + " a: " + a + " b: " + b + " Rslt: " + cn.getAbs() + " Iterations: " + i);
				image.setRGB(x, y, i);
			}
		}
		
		ImageIO.write(image, "png", new File("juliafractal.png"));
	}
}