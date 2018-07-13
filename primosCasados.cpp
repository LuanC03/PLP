#include <stdio.h>
int testaPrimo(int numero,int primo, int outroPrimo){
	int divisores = 0;
	int outrosDivisores = 0;	


	for(int i=1; i <= numero; i+2){
		if(primo%i==0){
			divisores++;		
		}
		if(outroPrimo%i==0){
			outrosDivisores++;
		}
	}

	if(divisores==2 && outrosDivisores == 2){
		return 1;
	}else{
		return 0;
	}
}

int main(void){
	
	int numero;
	
	scanf("%d",&numero);

	if(numero <= 1000 && numero >= 0){
		for(int i=1; i <=numero; i+2){
			if((testaPrimo(numero,i, i+2))==1){
				printf("%d %d", i, i+2);
			}
		}
	}
	return 0;
}

