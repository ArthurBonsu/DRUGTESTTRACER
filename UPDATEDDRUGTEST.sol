
    
pragma solidity >=0.4.0 <0.6.0;
//^0.4.18;

    // showing the exchange of product between drugcontroller and certifier
//Actually it is DrugDetails now
/*interface Regulator{
     function  sendescrow(address escrowparticipator, bytes32 escrowparticipatorname, uint escrowparticipatoramount) external;
    function returnbackescrow (address _escrowvictimaddress, bytes32 _escrowvictimmame, uint _escrowvictimmoney) external; 
     //LASTOWNER  WILL BE PAID HERE 
      
  
               //LASTOWNER WILL BE PAID HERE 
    
  function deposit(address donator, address receipient, uint amount) external;
    
}
 */
contract EscrowComplianceCecker   {
    
    uint public amountrequired =2 ;
    address payable public  escrowownaddress=0xfd2C3e27BfACcf842424e48dC72cb18ba48E9457;

    uint escrowbalance =0;
    uint value;
    uint m;
    mapping(uint256 => bool) usedNonces;
    
    struct EscrowSentBack{
        address   payable  escrowvictimaddress;
        bytes32     escrowvictimmame;
        uint      escrowvictimmoney;
        bytes32   escrowvictimtimestamp;
         uint      escrowvictimcount;
        
        mapping (address => EscrowSentBack[]) escrowteeser;
    }
     EscrowSentBack[] public punishings;
    struct EscrowObtained{
         address payable escrowparticipantaddress;
         bytes32  escrowparticipantname;
         uint       escrowparticipantsinitialamountputin;
         bytes32      escrowparticipanttimestamp;
         uint            escrowparticipantcount;
        
       mapping (address => EscrowObtained[]) escrowobtainees;
       
    } 
       EscrowObtained[] public proposals;
       
      
     
   EscrowObtained escrowobtainee;
   EscrowSentBack escrowtees;
    
   /*  constructor(uint  _amountrequired) public  {
        amountrequired = _amountrequired;
        
        
}
*/
     function sendescrow(address payable escrowparticipator, bytes32 escrowparticipatorname, uint escrowparticipatoramount) public {
 escrowobtainee.escrowobtainees;
    
  
   escrowobtainee.escrowparticipantcount;
  
  m =escrowobtainee.escrowparticipantcount;
     uint obtcounter = m++;
    
    escrowobtainee.escrowparticipantaddress= escrowparticipator;
     escrowobtainee.escrowparticipantname=escrowparticipatorname;
     
        require(amountrequired <= escrowparticipatoramount, "This is not enough for escrow");
     escrowobtainee.escrowparticipantsinitialamountputin =escrowparticipatoramount;
     uint escrowedvaluesent = escrowobtainee.escrowparticipantsinitialamountputin;
           
      
     // knownEntity[entityAddress];
     //(entityStructs[rowNumber].entityAddress != entityAddress;
     
        
                              
              escrowobtainee.escrowobtainees[escrowparticipator][obtcounter].escrowparticipantsinitialamountputin =escrowedvaluesent;   
                         
                          escrowbalance += escrowobtainee.escrowparticipantsinitialamountputin;
 proposals.push(EscrowComplianceCecker.EscrowObtained({
      escrowparticipantaddress: escrowobtainee.escrowobtainees[escrowparticipator][obtcounter].escrowparticipantaddress,
      escrowparticipantname:escrowobtainee.escrowobtainees[escrowparticipator][obtcounter].escrowparticipantname,
       escrowparticipantsinitialamountputin:escrowobtainee.escrowobtainees[escrowparticipator][obtcounter].escrowparticipantsinitialamountputin,
      escrowparticipanttimestamp:escrowobtainee.escrowobtainees[escrowparticipator][obtcounter].escrowparticipanttimestamp,
      escrowparticipantcount:escrowobtainee.escrowobtainees[escrowparticipator][obtcounter].escrowparticipantcount
        // I HAVE TO ADD THE OTHER DETAILS
 
            
     
 }));  
           
}
//we have to receive latest escrow
function returnbackescrow (address payable _escrowvictimaddress, bytes32 _escrowvictimmame, uint _escrowvictimmoney) public {
         
          escrowtees.escrowteeser;
           escrowobtainee.escrowobtainees;
           escrowobtainee.escrowparticipantaddress;
             //   uint      obtcounter;
                uint  obtanothercounter;
                
                                  require(escrowobtainee.escrowobtainees[ escrowobtainee.escrowparticipantaddress][obtanothercounter].escrowparticipantaddress == _escrowvictimaddress);
                                      

  m =escrowtees.escrowvictimcount;
     uint counter = m++;
    escrowtees.escrowvictimaddress= _escrowvictimaddress;
   escrowtees.escrowvictimmame=_escrowvictimmame;
     escrowtees.escrowvictimmoney =_escrowvictimmoney;
            
     escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimmoney = escrowobtainee.escrowobtainees[ escrowobtainee.escrowparticipantaddress][obtanothercounter].escrowparticipantsinitialamountputin;
     escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimaddress =escrowobtainee.escrowobtainees[ escrowobtainee.escrowparticipantaddress][obtanothercounter].escrowparticipantaddress; 
//  escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimtimestamp =now;
   uint mymoney =    escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimmoney;
   address payable receipientaddress =  escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimaddress;
    require(msg.sender == escrowownaddress);
     escrowownaddress.transfer(mymoney);
     withdraw(mymoney,escrowbalance);
emit Sent(escrowownaddress, receipientaddress, mymoney);

    
   
 punishings.push(EscrowComplianceCecker.EscrowSentBack({
      escrowvictimaddress: escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimaddress,
      escrowvictimmame:  escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimmame,
       escrowvictimmoney: escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimmoney,
      escrowvictimtimestamp: escrowtees.escrowteeser[_escrowvictimaddress][counter]. escrowvictimtimestamp,
      escrowvictimcount: escrowtees.escrowteeser[_escrowvictimaddress][counter].escrowvictimcount
       // I HAVE TO ADD THE OTHER DETAILS
  
            
     
 }));  
                                        

    
}
 
 
 
 
 
  
    function deposit(address payable donator, address payable receipient, uint amount) public payable{
            donator.transfer(amount);
         escrowbalance +=amount;
         escrowownaddress =receipient;
         
    }
     function withdraw(uint balanceamount, uint escrowbalancenow) public payable {
         escrowbalance = escrowbalancenow;
         
        require(balanceamount <= escrowbalance, "Insufficient balance.");
         escrowbalance -=balanceamount;
         
         
     }
     
    
     function balances() public view returns(uint) {
          return escrowbalance;   
       
     }
 event Sent(address payable from, address payable receipientaddress, uint amount);
 
               
   // THE NEW RECEIVER WILL USE THIS TO SIGN THE MESSAGE 

   //for the escrowobtainedaddress = receipient address produce this amount
   //for deleting index
   //(entityList[entityStructs[entityAddress].listPointer] == entityAddress);
   
   
   //WE WILL USE IT TO RETRIEVE INFORMATION FOR THE ESCROW SO THAT THE ESCROW CAN ALSO SEE 
   //WHAT IS HAPPENING.
    
        
        // THIS FUNCTION IS CALLED BY INDUSTRY; HE CLAIMS GOOD AFTER EXCHANGE;
    function claimPayment( uint256 amount, uint256 nonce, bytes memory signature,address payable receipientaddress)
public {
    
require(!usedNonces[nonce]);
usedNonces[nonce] = true;
// this recreates the message that was signed on the client
bytes32 message = prefixed(keccak256(abi.encodePacked(msg.sender, amount,
nonce, this)));
require(recoverSigner(message, signature) == escrowownaddress);


msg.sender.transfer(amount);
withdraw(amount,escrowbalance);
emit Sent(msg.sender, receipientaddress, amount);

}
/// destroy the contract and reclaim the leftover funds.
function kill() public {
require(msg.sender == escrowownaddress);
selfdestruct(msg.sender);
}
/// signature methods.
function splitSignature(bytes memory sig)
internal
pure
returns (uint8 v, bytes32 r, bytes32 s)
{
require(sig.length == 65);
assembly {
// first 32 bytes, after the length prefix.
    
    
    
r := mload(add(sig, 32))
// second 32 bytes.
s := mload(add(sig, 64))
// final byte (first byte of the next 32 bytes).
v := byte(0, mload(add(sig, 96)))
}
return (v, r, s);
}
// HERE IS WHERE RECOVER SIGNER IS PASSED TO HIM SO THAT HE CAN GET HIS MONEY
function recoverSigner(bytes32 message, bytes memory sig)
internal
pure
returns (address)
{
(uint8 v, bytes32 r, bytes32 s) = splitSignature(sig);
return ecrecover(message, v, r, s);
}
/// builds a prefixed hash to mimic the behavior of eth_sign.
function prefixed(bytes32 hash) internal pure returns (bytes32) {
return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hash));
}

    
    
    
    
    
    
}
    
    
    
    
    
    
contract Industry is EscrowComplianceCecker {
// `TokenCreator` is a contract type that is defined below.
// It is fine to reference it as long as it is not used
// to create a new contract.





uint i;
uint strucount;


//This is the Processing Entitiy , whether farmer, manufacturer or sales
    
struct ProcessingEntity{
    address payable currentowner;
    address payable receiver;
    uint256 publickey;
    bytes32 currentownername;
    bytes32 receivername;
     uint256 currentownerprocessingfee;
     bytes32 role;
     uint balance;
      bytes32 RFIDofdrugtobesent;
    uint currentownerscount;
   mapping (bytes32 => ProcessingEntity[]) processingentities;  
}
        struct ProcessingEntityStructure{
      bytes32 location;
     bool hasdrug;
     
     uint escrowamount;
     address payable lastdestination;
     address payable justhandedoveraddres;
     bytes32 RFIDofthisdrug;
     address payable manufacturerofdrugstobesent;
    

     uint currentpersoncount;
    mapping (bytes32 => ProcessingEntityStructure[]) ProcessingEntityStructures;
}

 //This is the drug

struct Drug{
    address payable manufacturer;
    address payable currentdrugpossessor;
      bytes32 RFID;
    
      bytes32 drugname;
      uint cost;
     int temperature;
     int concentration;
     bytes32 location;
     bytes32 drugquality;
   
  mapping (bytes32 => Drug[]) drugs;
    uint numOfDrugCount;
    
}



// This is the nuber of phases that has taken place 
//We are tokenizing the process

struct Processes{
      address currentproces;
      bytes32 timestamp;
      bytes32 drugname;
      uint numberofProcessingEntities;
      
     
      bytes32 location;
      address payable receipient;
      uint escrowvalue;
   
   mapping (address => ProcessingEntity) Processingentities;
     uint numOfProcesses;
   mapping (uint => Processes) processbatch;
   mapping (bytes32 => Drug[]) drugRFID;

      }
      

ProcessingEntityStructure processingstructures;
ProcessingEntityStructure[] public processingstructureses;

Processes procedure;
Processes[] public procedures;

ProcessingEntity procent;

ProcessingEntity[] public  procenter;


Drug[] public self;
 Drug me;
//This is the Industry's constructor
/*  constructor(bytes32  _name, address currentowners, uint c ) public {
 i = c;
   procent.currentownername = _name;
     procent.currentowner = currentowners;

       procent.currentowner = msg.sender;

}
 
*/
//Now we will engage the processing phase here 
function newProcessingPhase (address payable _sender, bytes32 _sendername,address payable _receipient, bytes32 receipientname,bytes32 _RFID, address payable  _lastdestination,  uint processesnumber)  internal  {
 uint v;
 bool hasenrolleded = false;
 
 procent.RFIDofdrugtobesent= _RFID;
 processingstructures.RFIDofthisdrug =_RFID;
 
 procent.currentownerscount;
  
   
  procent.currentowner = _sender;
  procent.currentownername = _sendername;
  procent.receiver = _receipient;
  procent.receivername = receipientname;
  processingstructures.lastdestination = _lastdestination;
   me.RFID = _RFID;
 uint numOfProcesses = processesnumber;
  uint numOfDrugCount;
  uint currentownerscount;
  uint currentpersoncount; 
            
   
      numOfProcesses=   procedure.numOfProcesses++;
         numOfDrugCount = me.numOfDrugCount;
   currentownerscount = currentownerscount++;
   currentpersoncount = currentownerscount++;
   
         procent.currentownerscount = currentownerscount;
         processingstructures.currentpersoncount =currentpersoncount; 
      me.drugs;

          
       
    //  self[me.RFID][numOfDrugCount] = Drug[self.RFID][numOfDrugCount];
 sendescrows(procenter[currentownerscount].currentowner, procenter[currentownerscount].currentownername, processingstructureses[currentpersoncount].escrowamount, v);    

// SETTING UP!...Broke up the details because of deep stack depth

//Setting Up Enemy Details
ObtainProcessingEntity(procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentowner,procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].receiver, procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].publickey,procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownername,
 procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].receivername,procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerprocessingfee);

// processingstructureses
// Setting Up Next Escrow and Processamount
ObtainProcessingEntityDetails( procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].role,procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].balance,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].location,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].hasdrug,
processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].escrowamount,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].lastdestination,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].justhandedoveraddres);

// Setting Up More of People's Details
ObtainProcessingEntityStatus(procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].RFIDofdrugtobesent,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].manufacturerofdrugstobesent,procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerscount);


//SETTING UP MORE OF DRUGDETAILS.......
 ObtainDrugInfo(me.drugs[me.RFID][numOfDrugCount].currentdrugpossessor,
    me.drugs[me.RFID][numOfDrugCount].RFID, me.drugs[me.RFID][numOfDrugCount].cost,me.drugs[me.RFID][numOfDrugCount].drugname);


// Setting up the drug attributes
ObtainDrugInfoAdditional( me.drugs[me.RFID][numOfDrugCount].temperature,me.drugs[me.RFID][numOfDrugCount].concentration,me.drugs[me.RFID][numOfDrugCount].location, me.drugs[me.RFID][numOfDrugCount].numOfDrugCount, me.drugs[me.RFID][numOfDrugCount].manufacturer, me.drugs[me.RFID][numOfDrugCount].drugquality);

 self.push(Industry.Drug({
      currentdrugpossessor: me.drugs[me.RFID][numOfDrugCount].currentdrugpossessor,
      RFID:me.drugs[me.RFID][numOfDrugCount].RFID,
      cost:me.drugs[me.RFID][numOfDrugCount].cost,
      drugname:me.drugs[me.RFID][numOfDrugCount].drugname,
      
      
      temperature:me.drugs[me.RFID][numOfDrugCount].temperature,
       concentration:me.drugs[me.RFID][numOfDrugCount].concentration,
        location:me.drugs[me.RFID][numOfDrugCount].location,
         numOfDrugCount:me.drugs[me.RFID][numOfDrugCount].numOfDrugCount,
         manufacturer: me.drugs[me.RFID][numOfDrugCount].manufacturer,
         drugquality:me.drugs[me.RFID][numOfDrugCount].drugquality
         // i have to ensure other details are kept
      
            
     
 }));  
 
   
 procenter.push(ProcessingEntity(
     {
      currentowner: procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentowner,
      receiver:procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].receiver,
      publickey:  procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].publickey,
      currentownername: procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownername,
            receivername: procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].receivername,
               currentownerprocessingfee:procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerprocessingfee,
      role: procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].role,
     balance: procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].balance,
          
          RFIDofdrugtobesent:procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].RFIDofdrugtobesent,
        
      currentownerscount:procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerscount
        // I HAVE TO ADD THE OTHER DETAILS
  
   
                           
 })); 
 
 processingstructureses.push(ProcessingEntityStructure(
     {
      location:processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].location,
     
     
     
      hasdrug: processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].hasdrug,
       escrowamount: processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].escrowamount,
         lastdestination: processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].lastdestination,
         justhandedoveraddres:processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].justhandedoveraddres,
         
          RFIDofthisdrug:processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].RFIDofthisdrug,
          manufacturerofdrugstobesent:processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].manufacturerofdrugstobesent,
      
      currentpersoncount:processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].currentpersoncount
        // I HAVE TO ADD THE OTHER DETAILS
  
   
                           
 })); 
 
 
 
          procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerscount = procent.currentownerscount ;
     changecurrentownership( procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].receivername, procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownername,
procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentowner,procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].receiver ,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].justhandedoveraddres,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].manufacturerofdrugstobesent,
procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].RFIDofdrugtobesent,procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerscount, processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].hasdrug,me.drugs[me.RFID][numOfDrugCount].numOfDrugCount, procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerprocessingfee);
     
   procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerscount =   numOfProcesses;
    
    hasbeenenrolled(procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].receiver,hasenrolleded);
    checklastdestination(procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].receiver, processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].lastdestination,procent.processingentities[procent.RFIDofdrugtobesent][currentownerscount].currentownerscount,me.RFID);
    endphases( numOfDrugCount,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][currentpersoncount].lastdestination);
        me.drugs[me.RFID][numOfDrugCount].numOfDrugCount =numOfDrugCount;
    }

//function showDetails() public pure {
    //we have to console.log() it;
//    console.log();
//}

function providecustomerpermission( bytes32 _RFID) public {
        bool givepermito;
        
       procent.currentownerscount;
  
       i =procent.currentownerscount;
   
       processingstructures.currentpersoncount;
      strucount =processingstructures.currentpersoncount;
   
        procent.processingentities[procent.RFIDofdrugtobesent][i].role;
         givepermito = false;
         
 givepermitte(givepermito);
    
         require (  givepermitte(givepermito) == true);return;   
         require(procent.processingentities[procent.RFIDofdrugtobesent][i].role== 'manufacturer', "Permission not given by manufacturer");return;

        PrintthemAll(_RFID); 
}
  function givepermitte ( bool givepermits) public pure returns (bool)  {
                givepermits = true;
             return givepermits;
 }
 
  function makeDeposit(address payable donationmaker, uint amount) public payable  {
      address payable cashtoescrow=0xfd2C3e27BfACcf842424e48dC72cb18ba48E9457;

            procent.currentownerscount;
            i=procent.currentownerscount;
             processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
   
            procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner=donationmaker;
             require(amount <= procent.processingentities[procent.RFIDofdrugtobesent][i].balance,  "Insufficient balance.");
             EscrowComplianceCecker.deposit( procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner, cashtoescrow, amount);
            
            donationmaker.transfer(amount);

         emit Sent(donationmaker, cashtoescrow, amount);
             procent.processingentities[procent.RFIDofdrugtobesent][i].balance-=amount;
          
          
      }

 function PrintthemAll( bytes32 myRFID) public{
      PrintProcessingEntity(myRFID);
       PrintProcessingEntityDetails(myRFID);
       PrintProcessingEntityStatus(myRFID);
        PrintDrugInfo(myRFID);
        PrintDrugInfoAdditional(myRFID);
        
     
     
 }

 function DetectGoodsQuality(bytes32 _RFID) public {
       procent.currentownerscount;
    me.numOfDrugCount;
  uint w = me.numOfDrugCount;
   i =procent.currentownerscount;
    processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
                     require(me.drugs[me.RFID][w].RFID ==_RFID);return;
                   if( me.drugs[me.RFID][w].temperature <=  (me.drugs[me.RFID][w].temperature)/3 &&  me.drugs[me.RFID][w].concentration <=  (self[w].concentration )/3){
                       
                       me.drugs[me.RFID][w].drugquality = "Moderately Low";
                        
                   }    
                   else if ( me.drugs[me.RFID][w].temperature <=  (me.drugs[me.RFID][w].temperature)/4 &&  me.drugs[me.RFID][w].concentration <=  (self[w].concentration )/4){
                       me.drugs[me.RFID][w].drugquality = "Below Standard";
                   }
                   else {
                       me.drugs[me.RFID][w].drugquality= " Standard";
                   }
     
 }
 // This is where we get the whole the person from the industry's details
 
 
  
  // I am editing from here 
  
  
   function hasbeenenrolled (address payable enroller,bool hasenrolled) public
   {  
             hasenrolled = false;
           procent.currentownerscount;
           i =procent.currentownerscount;
            processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
            procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner= enroller;

            hasenrolled = true;
   }
   function ObtainProcessingEntity(address payable fellowowner, address payable fellowreceiver, uint256 fellowpublickey,bytes32 fellowcurrentownername,
  bytes32 fellowreceivername,uint256 fellowcurrentprocessingfee) public  {
    
    me.RFID;
    procent.RFIDofdrugtobesent;
   
    
     i =procent.currentownerscount;
      processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
    
   procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner=fellowowner;
       procent.processingentities[procent.RFIDofdrugtobesent][i].receiver=fellowreceiver;
        procent.processingentities[procent.RFIDofdrugtobesent][i].publickey=fellowpublickey;
      procent.processingentities[procent.RFIDofdrugtobesent][i].currentownername =fellowcurrentownername;
      procent.processingentities[procent.RFIDofdrugtobesent][i].receivername =fellowreceivername;

      procent.processingentities[procent.RFIDofdrugtobesent][i].currentownerprocessingfee=fellowcurrentprocessingfee;
      
     
      
  }
 
 
 
   
  function ObtainProcessingEntityDetails(bytes32 mybigrole,uint mygreatbalance,bytes32 mynicelocation, bool ihavethisdrug, uint ihaveescrowamount, address payable ourlastdestination,address payable  lookmyjustendedaddress) public {
    me.RFID;
    procent.RFIDofdrugtobesent;
     
     
     i =procent.currentownerscount;
     processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
    
       procent.processingentities[procent.RFIDofdrugtobesent][i].role=mybigrole;
      procent.processingentities[procent.RFIDofdrugtobesent][i].balance=mygreatbalance;
     processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].location=mynicelocation;
     
       processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].hasdrug=ihavethisdrug;
      processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].escrowamount=ihaveescrowamount;
        processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].lastdestination=ourlastdestination;
        processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].justhandedoveraddres=lookmyjustendedaddress;
         
             
          
 
 
 
  }
 

 
 
 
 function ObtainProcessingEntityStatus(bytes32 theRFIDofthisdrug,address payable manufacturerofdrugimustsend,uint iamcountingcurrentowners) public {
    me.RFID ;
    procent.RFIDofdrugtobesent;
    
     i =procent.currentownerscount;
      processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
    
        
          procent.processingentities[procent.RFIDofdrugtobesent][i].RFIDofdrugtobesent=theRFIDofthisdrug;
      processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].manufacturerofdrugstobesent=manufacturerofdrugimustsend;
      
      procent.processingentities[procent.RFIDofdrugtobesent][i].currentownerscount=iamcountingcurrentowners;
     
         
 
 
 
  }
 
 
  function ObtainDrugInfo(address payable iamthecurrentdrugprocessor,
    bytes32 thisisgoingtobeRFID, uint thisismygreatestcost,bytes32 tellmethedrugme) public {
    me.RFID ;
    procent.RFIDofdrugtobesent;
     uint w = me.numOfDrugCount;
     i =procent.currentownerscount;
      processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
    
  
     
       me.drugs[me.RFID][w].currentdrugpossessor=iamthecurrentdrugprocessor;
      me.drugs[me.RFID][w].RFID=thisisgoingtobeRFID;
       me.drugs[me.RFID][w].cost=thisismygreatestcost;
       me.drugs[me.RFID][w].drugname=tellmethedrugme;
         
          
 
 
  }
 
 
 
 
 
 
 
 
 
 
 
 
  function ObtainDrugInfoAdditional( int thetemperature, int theconcentration,bytes32  thegreatlocation, uint thenumberofcountihave, address payable themanufacturersihave, bytes32 thedrugqualityihave) public{
    me.RFID;
    procent.RFIDofdrugtobesent;
     uint w = me.numOfDrugCount;
     i =procent.currentownerscount;
      processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
   
    me.drugs[me.RFID][w].temperature=thetemperature;
        me.drugs[me.RFID][w].concentration=theconcentration;
         me.drugs[me.RFID][w].location=thegreatlocation;
          me.drugs[me.RFID][w].numOfDrugCount=thenumberofcountihave;
         me.drugs[me.RFID][w].manufacturer=themanufacturersihave;
        me.drugs[me.RFID][w].drugquality=thedrugqualityihave;
         
          
                      
 
  }
 
 
 
 
  
  // I have processing entities here
  
  
  function PrintProcessingEntity(bytes32 _RFID) public returns(address payable a, address payable b, uint256 c,bytes32 d,
  bytes32 e,uint256 f){
    me.RFID =_RFID;
    procent.RFIDofdrugtobesent=_RFID;
     uint w = me.numOfDrugCount;
     i =procent.currentownerscount;
      processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
    
   procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner=a;
       procent.processingentities[procent.RFIDofdrugtobesent][i].receiver=b;
        procent.processingentities[procent.RFIDofdrugtobesent][i].publickey=c;
      procent.processingentities[procent.RFIDofdrugtobesent][i].currentownername =d;
      procent.processingentities[procent.RFIDofdrugtobesent][i].receivername =e;

      procent.processingentities[procent.RFIDofdrugtobesent][i].currentownerprocessingfee=f;
      
     
                      assert(procent.processingentities[procent.RFIDofdrugtobesent][i].RFIDofdrugtobesent==procent.RFIDofdrugtobesent); 
                       assert(me.drugs[me.RFID][w].RFID==me.RFID);
         //       procent.processingentities[procent.RFIDofdrugtobesent][i];
       
      return (a,b,c,d,e,f );
      
  }
 
 
 
   
  function PrintProcessingEntityDetails(bytes32 _RFID) public returns(bytes32 g,uint h,bytes32 ii, bool j, uint k, address payable l,address payable  m){
    me.RFID =_RFID;
    procent.RFIDofdrugtobesent=_RFID;
     uint w = me.numOfDrugCount;
     i =procent.currentownerscount;
      processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
    
    
       procent.processingentities[procent.RFIDofdrugtobesent][i].role=g;
      procent.processingentities[procent.RFIDofdrugtobesent][i].balance=h;
    processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].location=ii;
     
       processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].hasdrug=j;
        processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].escrowamount=k;
          processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].lastdestination=l;
         processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].justhandedoveraddres=m;
         
             
          
                      require(procent.processingentities[procent.RFIDofdrugtobesent][i].RFIDofdrugtobesent==procent.RFIDofdrugtobesent); 
                       require(me.drugs[me.RFID][w].RFID==me.RFID);
         //       procent.processingentities[procent.RFIDofdrugtobesent][i];
       
      return (g,h,ii,j,k,l,m );
      
 
 
 
  }
 

 
 
 
 function PrintProcessingEntityStatus(bytes32 _RFID) public returns(bytes32 n,address payable o,uint p){
    me.RFID =_RFID;
    procent.RFIDofdrugtobesent=_RFID;
     uint w = me.numOfDrugCount;
     i =procent.currentownerscount;
      processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
    
        
          procent.processingentities[procent.RFIDofdrugtobesent][i].RFIDofdrugtobesent=n;
         processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].manufacturerofdrugstobesent=o;
      
      procent.processingentities[procent.RFIDofdrugtobesent][i].currentownerscount=p;
     
         
                      require(procent.processingentities[procent.RFIDofdrugtobesent][i].RFIDofdrugtobesent==procent.RFIDofdrugtobesent); 
                       require(me.drugs[me.RFID][w].RFID==me.RFID);
         //       procent.processingentities[procent.RFIDofdrugtobesent][i];
       
      return (n,o,p );
      
 
 
 
  }
 
 
  function PrintDrugInfo(bytes32 _RFID) public returns(address payable q,
    bytes32 r, uint s,bytes32 t){
    me.RFID =_RFID;
    procent.RFIDofdrugtobesent=_RFID;
     uint w = me.numOfDrugCount;
     i =procent.currentownerscount;
     
     processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
  
     
       me.drugs[me.RFID][w].currentdrugpossessor=q;
      me.drugs[me.RFID][w].RFID=r;
       me.drugs[me.RFID][w].cost=s;
       me.drugs[me.RFID][w].drugname=t;
         
          
                      require(procent.processingentities[procent.RFIDofdrugtobesent][i].RFIDofdrugtobesent==procent.RFIDofdrugtobesent); 
                       require(me.drugs[me.RFID][w].RFID==me.RFID);
         //       procent.processingentities[procent.RFIDofdrugtobesent][i];
       
      return (q,r,s,t );
      
 
 
 
  }
 
 
 
 
 
 
 
 
 
 
 
 
  function PrintDrugInfoAdditional(bytes32 _RFID) public returns( int u, int v,bytes32  ww, uint x, address payable y, bytes32 z){
    me.RFID =_RFID;
    procent.RFIDofdrugtobesent=_RFID;
     uint w = me.numOfDrugCount;
     i =procent.currentownerscount;
      processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
   
    me.drugs[me.RFID][w].temperature=u;
        me.drugs[me.RFID][w].concentration=v;
         me.drugs[me.RFID][w].location=ww;
          me.drugs[me.RFID][w].numOfDrugCount=x;
         me.drugs[me.RFID][w].manufacturer=y;
        me.drugs[me.RFID][w].drugquality=z;
         
          
                      require(procent.processingentities[procent.RFIDofdrugtobesent][i].RFIDofdrugtobesent==procent.RFIDofdrugtobesent); 
                       require(me.drugs[me.RFID][w].RFID==me.RFID);
         //       procent.processingentities[procent.RFIDofdrugtobesent][i];
       
      return (u,v,ww,x,y,z );
      
 
 
 
  }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 //The industry person has to oblidge to an escrow by making a small deposit
 function createEscrow(uint escrowvalue, uint balancers) public {
  procent.currentownerscount;
  
  
  i =procent.currentownerscount;
   processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
    procent.processingentities[procent.RFIDofdrugtobesent][i].balance=balancers;
     processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].escrowamount = escrowvalue;
       processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].escrowamount= procent.processingentities[procent.RFIDofdrugtobesent][i].balance/4;
      procent.processingentities[procent.RFIDofdrugtobesent][i].balance-= processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].escrowamount;
 
 }
 
  function sendescrows(address payable escrowparticipator, bytes32 escrowparticipatorname, uint escrowparticipatoramount, uint v) public {
   procent.currentownerscount =v;
   processingstructures.currentpersoncount =v;
       i =procent.currentownerscount;
       
     strucount =processingstructures.currentpersoncount;
    
   
 
       procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner= escrowparticipator;
     procent.processingentities[procent.RFIDofdrugtobesent][i].currentownername=escrowparticipatorname;
      processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].escrowamount =escrowparticipatoramount;
        createEscrow( processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].escrowamount,procent.processingentities[procent.RFIDofdrugtobesent][i].balance);  
        EscrowComplianceCecker.sendescrow( procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner,procent.processingentities[procent.RFIDofdrugtobesent][i].currentownername,processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].escrowamount);
      
      
  }
  
  function  sendescrow(address payable escrowparticipator, bytes32 escrowparticipatorname, uint escrowparticipatoramount) public {
          EscrowComplianceCecker.sendescrow( escrowparticipator,  escrowparticipatorname, escrowparticipatoramount);
      }
      
      
      
      function returnbackescrow (address payable _escrowvictimaddress, bytes32 _escrowvictimmame, uint _escrowvictimmoney) public{
             EscrowComplianceCecker.returnbackescrow( _escrowvictimaddress,  _escrowvictimmame,  _escrowvictimmoney)    ;
      }
      
      function deposit(address payable donator, address payable receipient, uint amount) public payable {
            EscrowComplianceCecker.deposit( donator,  receipient,  amount);   
      }
      
      
      
      
  
 // This is where we check the last destination to see if the drug has arrived mostly at point of purchase
 //In some cases different shops may buy assigning the last destination may be a bit tricky on that note
 function checklastdestination(address payable _receiver,address payable  _lastdestination,uint256 s, bytes32 _RFID) public {
       procent.currentownerscount=s;
          bool _lastdestinationreached = false;
       i =procent.currentownerscount;
        processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
   
       procent.processingentities[procent.RFIDofdrugtobesent][i].receiver=_receiver;
       processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].lastdestination =_lastdestination;
         if(procent.processingentities[procent.RFIDofdrugtobesent][i].receiver ==processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].lastdestination){
              _lastdestinationreached = true;
              PrintProcessingEntity(_RFID);   
         }
 }
 
 // We ensure that they verify so that we can show their details else escrow is launched;
/* function checksignature() public {
     
     
 }
 */

   //For each phase end it makes an incrament for another drug possibly

  function endphases(uint numOfDrugCounts, address payable _lastdestination)  public  returns(uint){
      //I have to add i
         processingstructures.currentpersoncount;
     strucount =processingstructures.currentpersoncount;
    
        processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].lastdestination =_lastdestination; 
        if(msg.sender ==  processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].lastdestination){
            uint numOfDrugCount;
         numOfDrugCount=        numOfDrugCounts;
       me.numOfDrugCount = numOfDrugCount++;
       return me.numOfDrugCount;
             
 }

}

function withdraw(uint balanceamount, uint escrowbalancenow) public payable  {
         EscrowComplianceCecker.withdraw(balanceamount,escrowbalancenow);
         
          }
     
     function balances() public view returns(uint){
          EscrowComplianceCecker.balances(); 
     }
     
     
  function claimPayment( uint256 amount, uint256 nonce, bytes memory signature,address payable receipientaddress)
public  {
    EscrowComplianceCecker.claimPayment(amount, nonce, signature, receipientaddress);
    
}

 // Here is the place where we change ownership of the drug;
   function  changecurrentownership (bytes32 newName, bytes32 oldName,address payable  oldAddress, address payable newAddress,address payable _jushandedoveraddress,address payable manufactureraddress, bytes32 _RFID,  uint e,  bool haspackage, uint f, uint256 _currentownerprocessingfee)  public  {
  
 uint256 _nonce;
  bytes memory _signature;

  procent.currentownerscount =e;
    me.numOfDrugCount =   f;
  uint w = me.numOfDrugCount;
  me.drugs[me.RFID][w].manufacturer =manufactureraddress;
    me.drugs[me.RFID][w].RFID = _RFID;
  
  
  i =procent.currentownerscount;
   processingstructures.currentpersoncount =e;
     strucount =processingstructures.currentpersoncount;
    
   
   processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].hasdrug = haspackage;    
     uint _escrowvictimmoney;
  processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].justhandedoveraddres =_jushandedoveraddress;
      //Here is where we check to see if the mesage sender is really the person
      //Here we have to add the drug, because the drug has to literally change hands;
  if (msg.sender !=  procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner &&processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].hasdrug==true) return;//This is optional
                                     processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].hasdrug=false;
                                      
      procent.processingentities[procent.RFIDofdrugtobesent][i].currentownername = oldName;
       procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner= oldAddress;
        procent.processingentities[procent.RFIDofdrugtobesent][i].currentownerprocessingfee = _currentownerprocessingfee;
          procent.processingentities[procent.RFIDofdrugtobesent][i].receivername= newName;
       procent.processingentities[procent.RFIDofdrugtobesent][i].receiver= newAddress;
       
       
      
      EscrowComplianceCecker.claimPayment( procent.processingentities[procent.RFIDofdrugtobesent][i].currentownerprocessingfee,_nonce,_signature, procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner);
                procent.processingentities[procent.RFIDofdrugtobesent][i].balance+= procent.processingentities[procent.RFIDofdrugtobesent][i].currentownerprocessingfee;
       EscrowComplianceCecker.returnbackescrow (  procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner,  procent.processingentities[procent.RFIDofdrugtobesent][i].currentownername,  _escrowvictimmoney);
       procent.processingentities[procent.RFIDofdrugtobesent][i].balance+=_escrowvictimmoney ;
       
      // returnbackescrow (procent[i].currentowner,  procent[i].currentownername); 
     //LASTOWNER  WILL BE PAID HERE 
     
       
        procent.processingentities[procent.RFIDofdrugtobesent][i].currentownername=   procent.processingentities[procent.RFIDofdrugtobesent][i].receivername ;
        procent.processingentities[procent.RFIDofdrugtobesent][i].currentowner = procent.processingentities[procent.RFIDofdrugtobesent][i].receiver;
        processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].justhandedoveraddres = msg.sender;
        procent.processingentities[procent.RFIDofdrugtobesent][i].RFIDofdrugtobesent =   me.drugs[me.RFID][w].RFID ;
       processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].manufacturerofdrugstobesent = me.drugs[me.RFID][w].manufacturer;
         processingstructures.ProcessingEntityStructures[processingstructures.RFIDofthisdrug][strucount].hasdrug = true; 
       //This is optional
       
}


}



 contract Consumer is EscrowComplianceCecker  {
          uint  i; 
      
       struct Buyer {
       bytes32  customername;
        uint  customerage;
       uint price;
       uint thecustomerscount;
       address payable consumeraddress;
       bytes32 RFIDS;
    
      mapping (address => Buyer[]) buyers;
      mapping (bytes32 => Buyer[]) somebuyer;

       }
       
        Buyer[] public consumerstore; 
        Buyer consumer;
       
       
   
     function getConsumerdetails(address payable _consumeraddress) public returns(address payable consumeraddressretrieved, bytes32 customerretrievedname, uint customerretrievedage)   {
        i = consumer.thecustomerscount;
         
         consumer.consumeraddress = _consumeraddress;
        
            
           consumer.buyers[consumer.consumeraddress][i].consumeraddress =  consumer.consumeraddress;
       consumer.buyers[consumer.consumeraddress][i].customername =customerretrievedname ;
       consumer.buyers[consumer.consumeraddress][i].customerage;
             
                   require( consumer.buyers[consumer.consumeraddress][i].consumeraddress  ==  consumer.consumeraddress);
         
         return (  consumer.buyers[consumer.consumeraddress][i].consumeraddress,consumer.buyers[consumer.consumeraddress][i].customername,
                  consumer.buyers[consumer.consumeraddress][i].customerage
           );
         
         
     }
        
       function storeconsumerstuff(address payable _consumeraddresses, bytes32 _customernamess, uint _customeragess, uint priceshere, bytes32 RRFIDS  ) public {
         
           i = consumer.thecustomerscount++;
         
         consumer.consumeraddress = _consumeraddresses;
         consumer.customername = _customernamess;
         consumer.customerage =  _customeragess;
         consumer.price =priceshere;
         consumer.RFIDS =RRFIDS;  
         
          consumer.somebuyer[consumer.RFIDS][i].consumeraddress = consumer.consumeraddress;
              consumer.somebuyer[ consumer.RFIDS][i].customername = consumer.customername;
                  consumer.somebuyer[ consumer.RFIDS][i].customerage =consumer.customerage;
                consumer.somebuyer[ consumer.RFIDS][i].price =priceshere;
                  consumer.somebuyer[ consumer.RFIDS][i].RFIDS= RRFIDS;
           
     
     
     
     
     consumerstore.push(Buyer(
     {
      customername:  consumer.somebuyer[ consumer.RFIDS][i].customername,
      customerage: consumer.somebuyer[ consumer.RFIDS][i].customerage,
      price:  consumer.somebuyer[consumer.RFIDS][i].price,
      thecustomerscount: consumer.somebuyer[consumer.RFIDS][i].thecustomerscount,
        consumeraddress:  consumer.somebuyer[consumer.RFIDS][i].consumeraddress,
             RFIDS: consumer.somebuyer[ consumer.RFIDS][i].RFIDS
    
   
                           
 }));  
     
     
      
  } 
       
     
        function drugbought(address payable _consumeraddr, bytes32 _customernam, bytes32 drugsRFID ) public returns (address payable suchacustomer, bytes32 customername, bytes32 thedrugandRFID, uint priceofdrug) {
          i = consumer. thecustomerscount++;
         
           consumer.consumeraddress = _consumeraddr;
         consumer.customername = _customernam;
       
         consumer.price;
         consumer.RFIDS =drugsRFID;  
           
             consumer.somebuyer[ consumer.RFIDS][i].consumeraddress;
             consumer.somebuyer[ consumer.RFIDS][i].customername ;
             consumer.somebuyer[ consumer.RFIDS][i].price;
                  
                   consumer.somebuyer[ consumer.RFIDS][i].RFIDS;
                  
                  
                   
                   require(consumer.buyers[consumer.consumeraddress][i].consumeraddress ==  consumer.consumeraddress ||  consumer.somebuyer[ consumer.RFIDS][i].RFIDS ==consumer.RFIDS);
         
         return ( consumer.buyers[consumer.consumeraddress][i].consumeraddress, consumer.somebuyer[ consumer.RFIDS][i].customername , consumer.somebuyer[ consumer.RFIDS][i].RFIDS,   consumer.somebuyer[ consumer.RFIDS][i].price
           );
         
            
        }
    
     function verify(bytes32 _RFID)  public{
           uint vry;
          Industry industrye = Industry(vry);
          industrye.PrintthemAll(_RFID);
         
     }
     
   

 function  sendescrow(address payable escrowparticipator, bytes32 escrowparticipatorname, uint escrowparticipatoramount) public {
          EscrowComplianceCecker.sendescrow( escrowparticipator,  escrowparticipatorname, escrowparticipatoramount);
      }
      
      
      
      function returnbackescrow (address payable _escrowvictimaddress, bytes32 _escrowvictimmame, uint _escrowvictimmoney) public{
             EscrowComplianceCecker.returnbackescrow( _escrowvictimaddress,  _escrowvictimmame,  _escrowvictimmoney)    ;
      }
      
      function deposit(address payable  donator, address payable receipient, uint amount) public payable {
            EscrowComplianceCecker.deposit( donator,  receipient,  amount);   
      }
   
function withdraw(uint balanceamount, uint escrowbalancenow) public payable  {
         EscrowComplianceCecker.withdraw(balanceamount,escrowbalancenow);
         
          }
     
     function balances() public view returns(uint) {
          EscrowComplianceCecker.balances(); 
     }
     
     
  function claimPayment( uint256 amount, uint256 nonce, bytes memory signature,address payable receipientaddress)
public  {
    EscrowComplianceCecker.claimPayment(amount, nonce, signature, receipientaddress);
    
}



}

                                                                                             //#SignedByGod



















   
  
   
   
   
   
