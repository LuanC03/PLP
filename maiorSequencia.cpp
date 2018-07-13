#include <stdio.h>

int main(void){

	int numero, numeroAtual;
	int contador = 0;
	int contadorAntigo = 0;
	scanf("%d",&numero);

	scanf("%d",&numeroAtual);
	int numeroAnterior = numeroAtual;
	for(int i = 0; i<numero-1; i++){
		if(numeroAnterior < numeroAtual){
			contador ++;
			numeroAnterior = numeroAtual;
		}else{
			contadorAntigo = contador;
			contador = 0;
		}
		scanf("%d",&numeroAtual);						
	}
	
	if(contadorAntigo > contador){
		contador = contadorAntigo;
	}
	printf("%d",contador);
	return 0;
}
