## ##########################
PRT Spin2Neu VERSION TEST 
## ##########################
WAT 30
## ##########################

WAT 1000

## ##  Abilitazione DMA
## WAT 2000
## WRD CTRL    00001002


## ##  Settaggio parametri RX
## WAT 2000
## WRD RXPAERCF 04040203
## WAT 100 
## RDV RXPAERCF

## ##  Abilitazione PAER 
## WAT 2000
## WRD RX_CTRL 00000002
## WAT 100
## RDV RX_CTRL   

## Wait
WAT 10000

## ##  Abilitazione SpiNNlink  Solo RIGHT
## WRD RX_CTRL 00080000
## 
## ## Wait
## WAT 10000
## 
## ##  Disbilitazione SpiNNlink 
## WRD RX_CTRL 00000000
## WAT 100
## WRD AUX_CTRL 00000000
## 
## ## Wait
## WAT 10000
 
## ##  Abilitazione SpiNNlink  Solo LEFT
## WRD RX_CTRL 00000008

## ## Wait
## WAT 10000
## 
## ##  Disbilitazione SpiNNlink 
## WRD RX_CTRL 00000000
## WAT 100
## WRD AUX_CTRL 00000000
## 
## ## Wait
## WAT 10000
## 
## ##  Abilitazione SpiNNlink  Solo AUX
## WRD RX_CTRL 00000000
## WAT 100
## WRD AUX_CTRL 00000008
## 
## ## Wait
## WAT 10000
## 
## ##  Disbilitazione SpiNNlink 
## WRD RX_CTRL 00000000
## WAT 100
## WRD AUX_CTRL 00000000
## 
## ## Wait
## WAT 10000
## 
## ##  Abilitazione SpiNNlink  TUTTI
## WRD RX_CTRL 00080008
## WRD AUX_CTRL 00000008
## 
## ## Wait
## WAT 1000

##  Abilitazione SpiNNlink  TX
WRD TX_CTRL 00000068

##  Abilitazione Loopback LEFT
WRD CTRL    00400000

##  Abilitazione SpiNNlink  Solo LEFT
WRD RX_CTRL 00000008

##  Dati TX
WRD TXDATA   00000000
WRD TXDATA   00000000
WRD TXDATA   00000000
WRD TXDATA   00000001
WRD TXDATA   00000000
WRD TXDATA   00000002
WRD TXDATA   00000000
WRD TXDATA   00000003
WRD TXDATA   00000000
WRD TXDATA   00000004
WRD TXDATA   00000000
WRD TXDATA   00000005
WRD TXDATA   00000000
WRD TXDATA   00000006
WRD TXDATA   00000000
WRD TXDATA   00000007

WAT 1000

RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 



WAT 10000

##  Abilitazione Loopback RIGHT
WRD CTRL    00800000

##  Abilitazione SpiNNlink  Solo RIGHT
WRD RX_CTRL 00080000

##  Dati TX
WRD TXDATA   00000000
WRD TXDATA   00000010
WRD TXDATA   00000000
WRD TXDATA   00000011
WRD TXDATA   00000000
WRD TXDATA   00000012
WRD TXDATA   00000000
WRD TXDATA   00000013
WRD TXDATA   00000000
WRD TXDATA   00000014
WRD TXDATA   00000000
WRD TXDATA   00000015
WRD TXDATA   00000000
WRD TXDATA   00000016
WRD TXDATA   00000000
WRD TXDATA   00000017

WAT 1000

RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 



WAT 10000

##  Abilitazione Loopback AUX
WRD CTRL    00C00000

##  Abilitazione SpiNNlink  Solo AUX
WRD RX_CTRL 00000000
WAT 100
WRD AUX_CTRL 00000008

##  Dati TX
WRD TXDATA   00000000
WRD TXDATA   00000020
WRD TXDATA   00000000
WRD TXDATA   00000021
WRD TXDATA   00000000
WRD TXDATA   00000022
WRD TXDATA   00000000
WRD TXDATA   00000023
WRD TXDATA   00000000
WRD TXDATA   00000024
WRD TXDATA   00000000
WRD TXDATA   00000025
WRD TXDATA   00000000
WRD TXDATA   00000026
WRD TXDATA   00000000
WRD TXDATA   00000027

WAT 1000

RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 
RDV RXDATA 



## ##  Disabilitazione PAER 
## WAT 12000
## WRD RX_CTRL 00000000
## WAT 100
## RDV RX_CTRL  

## ##  Disabilitazione DMA
## WAT 100000
## WRD CTRL    00000000
## WAT 100
## RDV CTRL  

## ##  Ignora FIFO Full
## WAT 250000
## WRD RXPAERCF 04040213
## WAT 100 
## RDV RXPAERCF








## ##  Abilitazione TX PAER
## WAT 2000
## WRD TX_CTRL 00000002
## WAT 100
## RDV TX_CTRL   
##     
## ##  Abilitazione DMA
## WAT 2000
## WRD CTRL    00001002
## WAT 100
## RDV CTRL    
## 
## ##  Settaggio parametri TX
## WAT 4000
## WRD TXPAERCF 00000003
## WAT 100 
## RDV TXPAERCF
## 
## 
## WAT 4000
## DMW 8 1 00000001 00000002 00000003 00000004 00000005 00000006 00000007 00000008
## WAT 100 
## SDM 0

## 
## ##  Settaggio parametri TX
## WAT 4000
## WRD TXPAERCF 00000003
## WAT 100 
## RDV TXPAERCF
## 
## ##  DisAbilitazione TX PAER
## WAT 2000
## WRD TX_CTRL 00000002
## WAT 100
## RDV TX_CTRL   
## 
## WAT 4000
## DMW 8 1 00000001 00000002 00000003 00000004 00000005 00000006 00000007 00000008
## WAT 100 
## SDM 0
## 

PRT End test
## ##########################

##        
##      
##      
##      
##      

##      ##  Settaggio parametri RX
##      WAT 2000
##      WRD RXPAERCF 04040203
##      WAT 100 
##      RDV RXPAERCF
     
##      ##  Abilitazione PAER 
##      WAT 2000
##      WRD RX_CTRL 00000002
##      WAT 100
##      RDV RX_CTRL   
##      
##      ## ##  Disabilitazione PAER 
##      ## WAT 12000
##      ## WRD RX_CTRL 00000000
##      ## WAT 100
##      ## RDV RX_CTRL  
##      
##      ## ##  Disabilitazione DMA
##      ## WAT 100000
##      ## WRD CTRL    00000000
##      ## WAT 100
##      ## RDV CTRL  
##      
##      ##  Ignora FIFO Full
##      WAT 250000
##      WRD RXPAERCF 04040213
##      WAT 100 
##      RDV RXPAERCF
