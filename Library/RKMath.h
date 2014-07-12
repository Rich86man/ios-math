//
//  RKMath.h
//
//  Created by Richard Kirk on 6/23/14.
//  Copyright (c) 2014 Richard Kirk. All rights reserved.
//

#import <Foundation/Foundation.h>

// normalize value to [0, 1] based on its range [startValue, endValue]
extern double normalize(double value, double startValue, double endValue);

// project a normalized value [0, 1] to a given range [start, end]
extern double projectNormal(double n, double start, double end);

extern double solveLinearEquation(double input, double startValue, double endValue, double outputStart, double outputEnd);

extern CGSize solveLinearEquationSize(double input, double startValue, double endValue, CGSize outputStart, CGSize outputEnd);

extern CGPoint solveLinearEquationPoint(double input, double startValue, double endValue, CGPoint outputStart, CGPoint outputEnd);

extern CGRect solveLinearEquationRect(double input, double startValue, double endValue, CGRect outputStart, CGRect outputEnd);

extern CGPoint CGRectGetCenter(CGRect rect);