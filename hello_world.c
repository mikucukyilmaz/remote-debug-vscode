#include <stdio.h>
#include "MQTTClient.h"
#include "MQTTClientPersistence.h"

int tmp=0;

int main()
{
	//MQTTAsync_nameValue* infos = MQTTAsync_getVersionInfo();

	while(tmp < 200)
	{
		tmp++;
		printf("%d \n",tmp);
	}
	printf("Hello World \n");
	printf("This is remote debug setup, fuck u all\n");
}
