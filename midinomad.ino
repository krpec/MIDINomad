#include <MIDI.h>

#define MIDI_CHANNEL 1

#define REL1 2
#define REL2 3
#define MESA_SWA 4
#define MESA_SWB 5
#define MESA_SWC 6

#define LED_CH1 7
#define LED_CH2 8
#define LED_CH3 9

#define SW_CH1  10
#define SW_CH2  11
#define SW_CH3  12
#define SW_SOLO 14
#define SW_REV  15
#define SW_EQ   16

#define VAL_CH1  0
#define VAL_CH2  10
#define VAL_CH3  20
#define VAL_EQ   1
#define VAL_REV  2
#define VAL_SOLO 4

MIDI_CREATE_DEFAULT_INSTANCE();

byte currentProgram =  10;
byte currentChannel =  VAL_CH2;
byte currentFunction = 0;

byte lock; 

void setChannel(int channel = 1) {
  currentChannel = channel;
  //handle output change to set correct channel & change the LEDs
  switch (channel) {
    case VAL_CH1:
			digitalWrite(REL1, HIGH);
			digitalWrite(REL2, HIGH);
			
      digitalWrite(LED_CH1, HIGH);
      digitalWrite(LED_CH2, LOW);
      digitalWrite(LED_CH3, LOW);
      break;
    case VAL_CH2:
			digitalWrite(REL1, LOW);
			
      digitalWrite(LED_CH1, LOW);
      digitalWrite(LED_CH2, HIGH);
      digitalWrite(LED_CH3, LOW);
      break;
    case VAL_CH3:
			digitalWrite(REL1, HIGH);
			digitalWrite(REL2, LOW);
			
      digitalWrite(LED_CH1, LOW);
      digitalWrite(LED_CH2, LOW);
      digitalWrite(LED_CH3, HIGH);
      break;
  }
}

void functionOn(int f) {
  currentFunction = currentFunction | f;
  //handle output change to turn the SOLO/REV/EQ on
	switch (f) {
	  case VAL_EQ:
			digitalWrite(MESA_SWC, LOW);
			break;
		case VAL_REV:
			digitalWrite(MESA_SWB, HIGH);
			break;
		case VAL_SOLO:
			digitalWrite(MESA_SWA, LOW);
			break;
	}
}

void functionOff(int f) {
  currentFunction -= f;
  //handle output change to turn the SOLO/REV/EQ off
	switch (f) {
  	case VAL_EQ:
			digitalWrite(MESA_SWC, HIGH);
			break;
	  case VAL_REV:
			digitalWrite(MESA_SWB, LOW);
			break;
	  case VAL_SOLO:
			digitalWrite(MESA_SWA, HIGH);
			break;
	}
}

void toggleFunction(int f) {
  if (currentFunction & f == f) {
    functionOff(f);
  }
  else {
    functionOn(f);
  }
}

void changeProgram(byte num) {
    if (num <= VAL_CH2) {
      //change channel to CH1  
      setChannel(VAL_CH1);
    }
    else if (num >= VAL_CH2 && num < VAL_CH3)
    {
      //change channel to ch2  
      setChannel(VAL_CH2);
    }
    else {
      //change channel to ch3
      setChannel(VAL_CH3);
    }

    byte functionFlags = num - currentChannel;
    
    if (functionFlags & VAL_EQ == VAL_EQ) {
      functionOn(VAL_EQ);
    }
    else {
      functionOff(VAL_EQ);
    }

    if (functionFlags & VAL_REV == VAL_REV) {
      functionOn(VAL_REV);
    }
    else {
      functionOff(VAL_REV);
    }

    if (functionFlags & VAL_SOLO == VAL_SOLO) {
      functionOn(VAL_SOLO);
    }
    else {
      functionOff(VAL_SOLO);
    }

    currentProgram = num;
}

void waitUntilButtonReleased() {
  while (lock && !digitalRead(lock)) {
    delay(1);
  }
}

void handleProgramChange(byte channel, byte number) {
  if (channel == MIDI_CHANNEL) {
    changeProgram(number);
  }
}

void setup() {
  pinMode(REL1, OUTPUT);
  pinMode(REL2, OUTPUT);
  pinMode(MESA_SWA, OUTPUT);
  pinMode(MESA_SWB, OUTPUT);
  pinMode(MESA_SWC, OUTPUT);
  
  pinMode(LED_CH1, OUTPUT);
  pinMode(LED_CH2, OUTPUT);
  pinMode(LED_CH3, OUTPUT);

  pinMode(SW_CH1, INPUT);
  pinMode(SW_CH2, INPUT);
  pinMode(SW_CH3, INPUT);
  pinMode(SW_EQ, INPUT);
  pinMode(SW_REV, INPUT);
  pinMode(SW_SOLO, INPUT);
  
  byte led;
  for (led = LED_CH1; led <= LED_CH3; led++) {
    digitalWrite(led, HIGH);
    delay(300);
    digitalWrite(led, LOW);
  }
  
  //defaults: CH1, SOLO & EQ & REV off
  setChannel(1);
  functionOff(VAL_EQ);
  functionOff(VAL_REV);
  functionOff(VAL_SOLO);

  MIDI.begin(MIDI_CHANNEL_OMNI);
  MIDI.setInputChannel(MIDI_CHANNEL);
  MIDI.turnThruOn(midi::Thru::DifferentChannel);
  MIDI.setHandleProgramChange(handleProgramChange);
}

void loop() {
  //handle the buttons
  lock = 0;
  byte btnConfig = currentProgram;

  if (!digitalRead(SW_CH1)) {
    if (currentChannel != VAL_CH1) {
      btnConfig -= currentChannel;
      lock = SW_CH1;
    }
  }
  else if (!digitalRead(SW_CH2)) {
    if (currentChannel != VAL_CH2) {
      btnConfig -= currentChannel;
      btnConfig += VAL_CH2;
      lock = SW_CH2;
    }
  }
  else if (!digitalRead(SW_CH3)) {
    if (currentChannel != VAL_CH3) {
      btnConfig -= currentChannel;
      btnConfig += VAL_CH3;
      lock = SW_CH3;
    }
  }
  else if (!digitalRead(SW_EQ)) {
    if (currentFunction & VAL_EQ == VAL_EQ) {
      btnConfig -= VAL_EQ;
    }
    else {
      btnConfig += VAL_EQ;
    }

    lock = SW_EQ;
  }
  else if (!digitalRead(SW_REV)) {
    if (currentFunction & VAL_REV == VAL_REV) {
      btnConfig -= VAL_REV;
    }
    else {
      btnConfig += VAL_REV;
    }

    lock = SW_REV;
  }
  else if (!digitalRead(SW_SOLO)) {
    if (currentFunction & VAL_SOLO == VAL_SOLO) {
      btnConfig -= VAL_SOLO;
    }
    else {
      btnConfig += VAL_SOLO;
    }

    lock = SW_SOLO;
  }

  waitUntilButtonReleased();
  
  if (btnConfig != currentProgram) {
    changeProgram(btnConfig);
  }
  
  //MIDI read here..
  MIDI.read();
}
