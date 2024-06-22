const quantity = 30;
const bPrice = 1000;
const sPrice = 1500;

const etc = 0.00325;
const sebi = 0.0001;
const brokerage = 40;

function plateFormCharges(quantity, bPrice, sPrice){
    var bPlatformCharges = (((quantity * bPrice)*0.05)/100);
    var sPlatformCharges = (((quantity * sPrice)*0.05)/100);
    if(bPlatformCharges > 20){
        bPlatformCharges = 20;
    }
    else{
        bPlatformCharges = bPlatformCharges;
    }
    if(sPlatformCharges > 20){
        sPlatformCharges = 20;
    }
    else{
        sPlatformCharges = sPlatformCharges;
    }
    const total = bPlatformCharges + sPlatformCharges;
    console.log("bPlateformCharges: " + total);
}
plateFormCharges(quantity, bPrice, sPrice)

function countGST(quantity, bPrice, sPrice) {
  const bEtc = (bPrice * quantity * etc) / 100;
  const sEtc = (sPrice * quantity * etc) / 100;
  const totalETc = bEtc + sEtc;

  const bSebi = (bPrice * quantity * sebi) / 100;
  const sSebi = (sPrice * quantity * sebi) / 100;
  const totalSebi = bSebi + sSebi;

  const gst = (totalETc + totalSebi + brokerage) * 0.18;
  console.log(gst);
}

countGST(quantity, bPrice, sPrice);
