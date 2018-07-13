#include <stdio.h>

int testaPrimo(int numero,int primo, int outroPrimo){
	int divisores = 0;
	int outrosDivisores = 0;	


	for(int i=1; i <= numero; i++){
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

int main(){
	
	int numero, flag;
	
	scanf("%d",&numero);

	if(numero <= 1000 && numero >= 0){

		for(int i=0; i <numero; i++){
			printf("1");
			flag = testaPrimo(numero,i, i+2);
			printf("%d %d", i, i+2);
			if(flag==1){
				printf("%d %d\n", i, i+2);
			}
		}
	}
	return 0;
}

