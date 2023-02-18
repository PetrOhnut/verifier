/* UART hardware constants. */
#define BAUD_RATE 19200

#include <stdint.h>

/* FreeRTOS kernel includes. */
#include <FreeRTOS.h>
#include <semphr.h>
#include <queue.h>
#include <task.h>

/* NEORV32 includes. */
#include <neorv32.h>

void vApplicationMallocFailedHook( void );
void vApplicationIdleHook( void );
void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName );
void vApplicationTickHook( void );

/* Priorities used by the tasks. */
SemaphoreHandle_t Mutex1;
SemaphoreHandle_t Mutex2;

void TestTask2()
{
  while(1)
  {
    xSemaphoreTake(Mutex2, portMAX_DELAY);
    neorv32_uart0_print("TestTask2.\n");

    xSemaphoreTake(Mutex1, portMAX_DELAY);
    xSemaphoreGive(Mutex2);
    vTaskDelay(10);
  }
}

void TestTask1(void *pvParameters)
{
  while(1)
  {
    xSemaphoreTake(Mutex1, portMAX_DELAY);
    neorv32_uart0_print("TestTask1.\n");
    
    xTaskCreate(TestTask2, "TestTask2", 100, NULL, 2, NULL);
    
    xSemaphoreTake(Mutex2, portMAX_DELAY);
    xSemaphoreGive(Mutex1);
    vTaskDelay(10);
  }
}

int main(void)
{

  neorv32_uart0_setup(BAUD_RATE, PARITY_NONE, FLOW_CONTROL_NONE);

  Mutex1 = xSemaphoreCreateMutex();
  Mutex2 = xSemaphoreCreateMutex();

  xTaskCreate(TestTask1, "TestTask1", 100, NULL, 1, NULL);
}


void vApplicationTickHook( void )
{

}

void vApplicationMallocFailedHook( void )
{
	/* vApplicationMallocFailedHook() will only be called if
	configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
	function that will get called if a call to pvPortMalloc() fails.
	pvPortMalloc() is called internally by the kernel whenever a task, queue,
	timer or semaphore is created.  It is also called by various parts of the
	demo application.  If heap_1.c or heap_2.c are used, then the size of the
	heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
	FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
	to query the size of free heap space that remains (although it does not
	provide information on how the remaining heap might be fragmented). */
	taskDISABLE_INTERRUPTS();
  neorv32_uart0_print("FreeRTOS_FAULT: vApplicationMallocFailedHook (solution: increase 'configTOTAL_HEAP_SIZE' in FreeRTOSConfig.h)\n");
	__asm volatile( "ebreak" );
	for( ;; );
}

