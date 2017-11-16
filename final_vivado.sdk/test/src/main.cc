#include <xaxidma.h>
#include <xbacksub.h>
#include <xparameters.h>
#include <stdio.h>
#include <xil_cache.h>
#include "frame1.h"
#include <xfeature.h>


XFeature feature;
XAxiDma DMA0;
XBacksub backsub;

#define TX_BASE_ADDR 0x11000000
#define RX_BASE_ADDR 0x12000000

#define M_AXI_BOUNDING 0x21000000
#define M_AXI_FEATUREH 0x29000000

unsigned char *m_dma_buffer_TX = (unsigned char*) TX_BASE_ADDR;
unsigned char *m_dma_buffer_RX = (unsigned char*) RX_BASE_ADDR;

uint16_t * m_axi_bound = (uint16_t *) M_AXI_BOUNDING;
uint16_t * m_axi_feature = (uint16_t *) M_AXI_FEATUREH;


int DMAInit() {
	XAxiDma_Config * cfg_ptr = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);

	if (!cfg_ptr) {
		xil_printf("No config found for %d\r\n", XPAR_AXIDMA_0_DEVICE_ID);
		return XST_FAILURE;
	}

	int Status = XAxiDma_CfgInitialize(&DMA0, cfg_ptr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	XAxiDma_IntrDisable(&DMA0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&DMA0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	return XST_SUCCESS;
}

int main()
{
//	XBacksub_Initialize(&backsub,XPAR_XBACKSUB_0_DEVICE_ID);
	XFeature_Initialize(&feature,XPAR_XFEATURE_0_DEVICE_ID);
	DMAInit();
	Xil_DCacheDisable();

//
//	if (!XBacksub_IsIdle(&backsub))
//			printf("backsub ready\n");
		memcpy(m_dma_buffer_TX,frame1,sizeof(unsigned int)*76800/2);

		XAxiDma_SimpleTransfer(&DMA0, (UINTPTR) m_dma_buffer_TX,
					sizeof(unsigned int) * 76800/2,
					XAXIDMA_DMA_TO_DEVICE);
//			XAxiDma_SimpleTransfer(&DMA0, (UINTPTR)m_dma_buffer_RX,
//					sizeof(unsigned char) * 76800,
//					XAXIDMA_DEVICE_TO_DMA);
//
//		XBacksub_Set_init(&backsub, true);
//
//		XBacksub_Start(&backsub);
//printf("started\n");
//
//
//		for (int i=0; i<10*2;i++){
//			printf("%u\n",m_dma_buffer_TX[i*2]);
//		}
//
//		while (!XBacksub_IsDone(&backsub)){
//
//			printf("busy\n");
//		}
//		printf("out\n");
//		for (int i=0; i<10*2;i++){
//				printf("%u\n",m_dma_buffer_RX[i]);
//			}
//		while (XAxiDma_Busy(&DMA0, XAXIDMA_DMA_TO_DEVICE))
//				;
//		while (XAxiDma_Busy(&DMA0, XAXIDMA_DEVICE_TO_DMA))
//				;

		XFeature_Set_bounding(&feature,(u32)M_AXI_BOUNDING);
			XFeature_Set_featureh(&feature,(u32)M_AXI_FEATUREH);

			memset(m_axi_bound,0,sizeof(uint16_t)*40);

			m_axi_bound[0] = 24;
			m_axi_bound[1] = 24;
			m_axi_bound[2] = 128;
			m_axi_bound[3] = 128;

			XFeature_Start(&feature);

			//while (XAxiDma_Busy(&DMA0, XAXIDMA_DMA_TO_DEVICE));

			while(!XFeature_IsDone(&feature));


	return 0;
}
