/* ************************************************************************** */
/** X2CMain.c

  @Company
    Microchip Technology

  @Summary
 Implementation of X2C In and Outport connections

 */
/* ************************************************************************** */
#include "X2CUtils.h"
#warning "If the compiler failes here, that means you did not generate code by the X2C"
#include "X2C.h"
#include "TableStruct.h"
#include "LNet.h"
#include "Services.h"
#include "BlockServicesX2C.h"
#include "X2CComm.h"


/* used by init version info */
const struct {
	uint8 date[11];
	uint8 time[8];
} compilationDate = { __DATE__, __TIME__ };

/* X2C maintenance structure */
volatile tTableStruct TheTableStruct;
volatile tTableStruct *TableStruct = &TheTableStruct;

/* LNet protocol buffersize & node identifier */
#define LNET_BUFFERSIZE ((uint8)255)
#define LNET_NODEID ((uint8)1)

static tSerial interface;
static tLNet protocol;
static uint8 bufferLNet[LNET_BUFFERSIZE];

static void initVersionInfo(volatile tTableStruct* tblStruct, uint16 appVersion)
{
	tblStruct->framePrgVersion = appVersion;
	tblStruct->framePrgCompDateTime = (uint8*)&compilationDate;
   
}

void X2C_Initialise(void){
    
    initTableStruct();
    initSerialGeneric(&interface);
    initLNet(&protocol, bufferLNet, LNET_BUFFERSIZE, LNET_NODEID);
    initServiceTable((tProtocol*)&protocol);
    addCoreServices((tProtocol*)&protocol);
    addBlockServices((tProtocol*)&protocol);
    addTableStructProtocol((tProtocol*)&protocol);
    linkSerial((tProtocol*)&protocol, &interface);
    initX2CSerial(&interface);
    TableStruct->DSPState = PRG_LOADED_STATE;

    initVersionInfo(TableStruct, (uint16)0x0001);   /* software version 1 */
    TableStruct->TFncTable = blockFunctionTable;
    TableStruct->TParamTable = parameterIdTable;

   /** - initialise X2C model */
    X2C_Init(); 
}
/**
 * X2C scope communicate interface
 */
void X2C_Communicate(void){

    protocol.pCommunicate((tProtocol*)&protocol);

}
/* *****************************************************************************
 End of File
 */
