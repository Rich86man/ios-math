//
//  RKMath.m
//
//  Created by Richard Kirk on 6/23/14.
//  Copyright (c) 2014 Richard Kirk. All rights reserved.
//

#import "RKMath.h"

double normalize(double value, double startValue, double endValue)
{
    return (value - startValue) / (endValue - startValue);
}

double projectNormal(double n, double start, double end)
{
    return start + (n * (end - start));
}


double solveLinearEquation(double input, double startValue, double endValue, double outputStart, double outputEnd)
{
    return projectNormal(MAX(0, MIN(1, normalize(input, startValue, endValue))), outputStart, outputEnd);
}

CGSize solveLinearEquationSize(double input, double startValue, double endValue, CGSize outputStart, CGSize outputEnd)
{
    double normalizedInput = MAX(0, MIN(1, normalize(input, startValue, endValue)));
    double width = projectNormal(normalizedInput, outputStart.width, outputEnd.width);
    double height = projectNormal(normalizedInput, outputStart.height, outputEnd.height);
    return CGSizeMake(width, height);
}

CGPoint solveLinearEquationPoint(double input, double startValue, double endValue, CGPoint outputStart, CGPoint outputEnd)
{
    double normalizedInput = MAX(0, MIN(1, normalize(input, startValue, endValue)));
    double x = projectNormal(normalizedInput, outputStart.x, outputEnd.x);
    double y = projectNormal(normalizedInput, outputStart.y, outputEnd.y);
    return CGPointMake(x, y);
}

CGRect solveLinearEquationRect(double input, double startValue, double endValue, CGRect outputStart, CGRect outputEnd)
{
    CGRect rect = CGRectZero;
    rect.size = solveLinearEquationSize(input, startValue, endValue, outputStart.size, outputEnd.size);
    rect.origin = solveLinearEquationPoint(input, startValue, endValue, outputStart.origin, outputEnd.origin);
    return rect;
}

CGPoint CGRectGetCenter(CGRect rect)
{
    return CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
}