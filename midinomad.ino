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

#define MIDI_VAL_CH1  0
#define MIDI_VAL_CH2  10
#define MIDI_VAL_CH3  20
#define VAL_CH1  16
#define VAL_CH2  32
#define VAL_CH3  64
#define VAL_EQ   1
#define VAL_REV  2
#define VAL_SOLO 4

#define MASK_PRESERVE_CHANNELS 0B01110000
#define MASK_OMMIT_CHANNELS    0B00000111
#define MASK_EQ_OFF            0B01110110
#define MASK_REV_OFF           0B01110101
#define MASK_SOLO_OFF          0B01110011

MIDI_CREATE_DEFAULT_INSTANCE();

byte currentProgram =  VAL_CH2;
byte lock; 

void setChannel(int channel = VAL_CH2) {
  currentProgram &= MASK_OMMIT_CHANNELS;
  currentProgram |= channel;
  
  //handle output change to set correct channel & change the LEDs
  switch (channel) {
    case VAL_CH1:
			//digitalWrite(REL1, HIGH);
			//digitalWrite(REL2, HIGH);
			
      digitalWrite(LED_CH1, HIGH);
      digitalWrite(LED_CH2, LOW);
      digitalWrite(LED_CH3, LOW);
      break;
    case VAL_CH2:
			//digitalWrite(REL1, LOW);
			//digitalWrite(REL2, LOW);
			
      digitalWrite(LED_CH1, LOW);
      digitalWrite(LED_CH2, HIGH);
      digitalWrite(LED_CH3, LOW);
      break;
    case VAL_CH3:
			//digitalWrite(REL1, HIGH);
			//digitalWrite(REL2, LOW);
			
      digitalWrite(LED_CH1, LOW);
      digitalWrite(LED_CH2, LOW);
      digitalWrite(LED_CH3, HIGH);
      break;
  }
}

void functionOn(int f) {
  currentProgram |= f;
  //handle output change to turn the SOLO/REV/EQ on
	switch (f) {
	  case VAL_EQ:
			digitalWrite(MESA_SWC, HIGH);
			break;
		case VAL_REV:
			digitalWrite(MESA_SWB, HIGH);
			break;
		case VAL_SOLO:
			digitalWrite(MESA_SWA, HIGH);
			break;
	}
}

void functionOff(int f) {
  //handle output change to turn the SOLO/REV/EQ off
	switch (f) {
  	case VAL_EQ:
      currentProgram &= MASK_EQ_OFF;
			digitalWrite(MESA_SWC, LOW);
			break;
	  case VAL_REV:
      currentProgram &= MASK_REV_OFF;
			digitalWrite(MESA_SWB, LOW);
			break;
	  case VAL_SOLO:
      currentProgram &= MASK_SOLO_OFF;
			digitalWrite(MESA_SWA, LOW);
			break;
	}
}

void toggleFunction(int f) {
  if ((currentProgram & f) == f) {
    functionOff(f);
  }
  else {
    functionOn(f);
  }
}

void changeProgram(byte num) {
    if (num < VAL_CH2) {
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

    byte functionFlags = num & MASK_OMMIT_CHANNELS;
    
    if ((functionFlags & VAL_EQ) == VAL_EQ) {
      functionOn(VAL_EQ);
    }
    else {
      functionOff(VAL_EQ);
    }

    if ((functionFlags & VAL_REV) == VAL_REV) {
      functionOn(VAL_REV);
    }
    else {
      functionOff(VAL_REV);
    }

    if ((functionFlags & VAL_SOLO) == VAL_SOLO) {
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

void handleProgramChange(byte channel, byte midiNumber) {
  int number = VAL_CH2;
  
  if (channel == MIDI_CHANNEL) {
    if (midiNumber < MIDI_VAL_CH2) {
      number = midiNumber + VAL_CH1;  
    }
    else if (midiNumber >= MIDI_VAL_CH2 && midiNumber < MIDI_VAL_CH3) {
      number = midiNumber - MIDI_VAL_CH2 + VAL_CH2;
    }
    else {
      number = midiNumber - MIDI_VAL_CH3 + VAL_CH3;
    }
    
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
  setChannel(VAL_CH2);
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
	byte currentChannel = btnConfig & MASK_PRESERVE_CHANNELS;
	
  if (!digitalRead(SW_CH1)) {
    if (currentChannel != VAL_CH1) {
      btnConfig &= MASK_OMMIT_CHANNELS;
      btnConfig |= VAL_CH1;
      lock = SW_CH1;
    }
  }
  else if (!digitalRead(SW_CH2)) {
    if (currentChannel != VAL_CH2) {
      btnConfig &= MASK_OMMIT_CHANNELS;
      btnConfig |= VAL_CH2;
      lock = SW_CH2;
    }
  }
  else if (!digitalRead(SW_CH3)) {
    if (currentChannel != VAL_CH3) {
      btnConfig &= MASK_OMMIT_CHANNELS;
      btnConfig |= VAL_CH3;
      lock = SW_CH3;
    }
  }
  else if (!digitalRead(SW_EQ)) {
    if ((btnConfig & VAL_EQ) == VAL_EQ) {
      btnConfig &= MASK_EQ_OFF;
    }
    else {
      btnConfig |= VAL_EQ;
    }

    lock = SW_EQ;
  }
  else if (!digitalRead(SW_REV)) {
    if ((btnConfig & VAL_REV) == VAL_REV) {
      btnConfig &= MASK_REV_OFF;
    }
    else {
      btnConfig |= VAL_REV;
    }

    lock = SW_REV;
  }
  else if (!digitalRead(SW_SOLO)) {
    if ((btnConfig & VAL_SOLO) == VAL_SOLO) {
      btnConfig &= MASK_SOLO_OFF;
    }
    else {
      btnConfig |= VAL_SOLO;
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
