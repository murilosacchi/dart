import 'dart:io';

void main(){
    int abre = 8;
    int fecha = 20;
    print("Que horas você chegou?");
    String? chegadaTextual = stdin.readLineSync();

    if (chegadaTextual != null){
        int chegadaInt = int.parse(chegadaTextual);
        if (chegadaInt < 8 || chegadaInt > 20){
            print("O restaurante está fechado");
            if(chegadaInt >= 14 && chegadaInt <= 16){
                print("É horario do almoço");
            }
        }
        else {
            print("O restaurante está aberto");
        }
    }
     
}
