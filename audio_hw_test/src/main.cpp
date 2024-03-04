
#include <math.h>

#include "sleep.h"
#include "xparameters.h"
#include "xtime_l.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xil_cache.h"

#include "audio.h"

const int CPU_CLK_FREQ_Hz = XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ;
const int CPU_CLK_FREQ_MHz = CPU_CLK_FREQ_Hz / 1000000;

void configAudio() {
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);
	AudioPllConfig();
	AudioConfigureJacks();
}

void sineTest() {

	const int SAMPLE_RATE_HZ = 48000;
	const float SAMPLE_PERIOD_S = 1.0 / (float)SAMPLE_RATE_HZ;
	const u32 SAMPLE_PERIOD_DOUBLE_CYCLES = (int)(SAMPLE_PERIOD_S * CPU_CLK_FREQ_Hz / 2);

	configAudio();

	XTime startTime;
	XTime endTime;
	float deltaTimeS = 0;

	const float TWO_PI = 2 * M_PI;
	float freqHz = 500;
	float freqRadPerS = freqHz * TWO_PI;

	float angleRad = 0;

	while(true) {
		XTime_GetTime(&startTime);

		angleRad += freqRadPerS * deltaTimeS;
		if(angleRad > TWO_PI) {
			angleRad -= TWO_PI;
		}

		float sinVal = sin(angleRad);
		int sinValAsInt = (int)(sinVal * 100000);

		Xil_Out32(I2S_DATA_TX_L_REG, sinValAsInt);
		Xil_Out32(I2S_DATA_TX_R_REG, sinValAsInt);

		XTime_GetTime(&endTime);
		u32 deltaTimeDoubleCycles = (u32)((u64)endTime - (u64)startTime);
		u32 sleepTimeDoubleCycles = SAMPLE_PERIOD_DOUBLE_CYCLES - deltaTimeDoubleCycles;
		u32 sleepTimeUs = sleepTimeDoubleCycles * 2 / CPU_CLK_FREQ_MHz;
		usleep(sleepTimeUs);

		XTime_GetTime(&endTime);
		deltaTimeDoubleCycles = (u32)((u64)endTime - (u64)startTime);
		deltaTimeS = (2 * deltaTimeDoubleCycles) / (float)CPU_CLK_FREQ_Hz;
	}
}

void gunshotFileTest() {
	configAudio();

	const char* GUNSHOT_FILE_POINTER = (char*)0x018D0000;
	int numSamples 			= *(int*)(GUNSHOT_FILE_POINTER + 0);
	int bytesPerSample 		= *(int*)(GUNSHOT_FILE_POINTER + 4);
	int sampleRateHz 		= *(int*)(GUNSHOT_FILE_POINTER + 8);

	float samplePeriodS = 1.0 / (float)sampleRateHz;
	u32 samplePeriodDoubleCycles = (int)(samplePeriodS * CPU_CLK_FREQ_Hz / 2);

	int16_t* dataPointer = (int16_t*)(GUNSHOT_FILE_POINTER + 12);

	xil_printf("numSamples = %d\n", numSamples);
	xil_printf("bytesPerSample = %d\n", bytesPerSample);
	xil_printf("sampleRateHz = %d\n", sampleRateHz);
	xil_printf("sample 0 = %d\n", dataPointer[0]);
	xil_printf("sample 1 = %d\n", dataPointer[1]);

	XTime startTime;
	XTime endTime;

	while(true) {
		for(int s = 0; s < numSamples; s++) {
			XTime_GetTime(&startTime);

			Xil_Out32(I2S_DATA_TX_L_REG, 100 * dataPointer[s]);
			Xil_Out32(I2S_DATA_TX_R_REG, 100 * dataPointer[s]);

			XTime_GetTime(&endTime);
			u32 deltaTimeDoubleCycles = (u32)((u64)endTime - (u64)startTime);
			u32 sleepTimeDoubleCycles = samplePeriodDoubleCycles - deltaTimeDoubleCycles;
			u32 sleepTimeUs = sleepTimeDoubleCycles * 2 / CPU_CLK_FREQ_MHz;
			usleep(sleepTimeUs);
		}

		sleep(1);
	}
}

void dmaTest() {
	Xil_DCacheDisable();

	const int AUDIO_FETCHER_BASE_ADDR = XPAR_AUDIO_FETCHER_0_S_AXI_BASEADDR;
	const char* GUNSHOT_FILE_POINTER = (char*)0x018D0000;

	Xil_Out32(AUDIO_FETCHER_BASE_ADDR + 0, (int)GUNSHOT_FILE_POINTER);
	Xil_Out32(AUDIO_FETCHER_BASE_ADDR + 4, 100);
	Xil_Out32(AUDIO_FETCHER_BASE_ADDR + 8, 1);

	while(true) {
		Xil_Out32(AUDIO_FETCHER_BASE_ADDR + 8, 1);
		int reg0 = Xil_In32(AUDIO_FETCHER_BASE_ADDR + 0);
		int reg1 = Xil_In32(AUDIO_FETCHER_BASE_ADDR + 4);
		int reg2 = Xil_In32(AUDIO_FETCHER_BASE_ADDR + 8);
		int reg3 = Xil_In32(AUDIO_FETCHER_BASE_ADDR + 12);
		xil_printf("%d, %d, %d, %d, %d\n", *((int*)GUNSHOT_FILE_POINTER), reg0, reg1, reg2, reg3);
		sleep(1);
	}
}

int main() {
//	sineTest();
//	gunshotFileTest();
	dmaTest();
}

