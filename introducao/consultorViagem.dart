import 'dart:io';

void main(){
    print("1 - Tropical\n2 - Norte\n3 - Deserto\n4 - Montanha");
    String ? destinoEscolha = stdin.readLineSync();

    if(destinoEscolha != null){
        int destinoInt = int.parse(destinoEscolha);
        switch (destinoInt) {
            case 1:
                print('Clima quente');
                break;
            case 2:
                print('Clima frio');
                break;
            case 3:
                print('Clima quente durante o dia e frio durante a noite');
                break;
            case 4:
                print('Clima frio e possivelmente com neve');
                break;
            
            default:
                print('Escolha errada');
        }

    }
}