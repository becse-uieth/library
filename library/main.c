#include"header.h"
#include"prototype.h"
int main(){
	int choice,a,b,re;
	while(1){
	printf("=============================================\n");
	printf("  	 enter 1 --> add number\n");
	printf("         enter 2 --> subtract number\n");
	printf("	 enter 3 --> multply number\n");
	printf("	 enter 0 --> exit\n");
	printf("=============================================\n");
	printf("		 enter choice\n");
	scanf("%d",&choice);
	printf("enter first no\n");
	scanf("%d",&a);
	printf("enter second no\n");
	scanf("%d",&b);
	switch(choice){
		case 0:exit("EXIT_SUCCESS");
		       break;
		case 1:re=add(a,b);
		       break;
		case 2:re=sub(a,b);
		       break;
		case 3:re=mul(a,b);
		       break;
		default:printf("enter valid choice\n");
	}
	printf("\nyour result is %d\n",re);
	}
	return 0;
	
}

