import 'dart:math';

void main(){
    int a = 1;
    int b = -3;
    int c = 2;

    double x1 = (-b + sqrt(pow(b,2) - 4 * a * c));
    double x2 = (-b - sqrt(pow(b,2) - 4 * a * c));

    print("As raizes da equação são ${x1} e ${x2}");
}