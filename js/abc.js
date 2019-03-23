
function s_product()
{
    document.getElementById("Od1").style.visibility = "visible";
	document.getElementById("Od2").style.visibility = "visible";
	var s=document.getElementById("sproduct").value;
	 switch(s)
	 {
		case "1":
		document.getElementById("pi").value = "Product ID - " + "00001";
		document.getElementById("pr").value = "Price - " + "Rs. 200.00";
		document.getElementById("st").value = "Stock - " + "120";
		break;
		
		case "2":
		document.getElementById("pi").value = "Product ID - " + "00002";
		document.getElementById("pr").value = "Price - " + "Rs. 400.06";
		document.getElementById("st").value = "Stock - " + "220";
		break;
		
		case "3":
		document.getElementById("pi").value = "Product ID - " + "00003";
		document.getElementById("pr").value = "Price - " + "Rs. 600.60";
		document.getElementById("st").value = "Stock - " + "320";
		break;
		
		case "4":
		document.getElementById("pi").value = "Product ID - " + "00004";
		document.getElementById("pr").value = "Price - " + "Rs. 800.75";
		document.getElementById("st").value = "Stock - " + "420";
		break;
		
		case "5":
		document.getElementById("pi").value = "Product ID - " + "00005";
		document.getElementById("pr").value = "Price - " + "Rs. 1000.50";
		document.getElementById("st").value = "Stock - " + "520";
		break;
		
		case "6":
		document.getElementById("pi").value = "Product ID - " + "00005";
		document.getElementById("pr").value = "Price - " + "Rs. 100.00";
		document.getElementById("st").value = "Stock - " + "620";
		break;
		
		default:
		document.getElementById("pi").value = "Product ID";
		document.getElementById("pr").value = "Price";
		document.getElementById("st").value = "Stock";
		break;
	 
	 }
	 
	 document.getElementById("di").value = "Quantity - " + "1";
	 document.getElementById("dr").value = document.getElementById("pr").value;
}
	 
	 function s_customer()
{
     var s=document.getElementById("scust").value;
	 switch(s)
	 {
		case "1":
		document.getElementById("ci").value = "Customer ID - " + "00001";
		document.getElementById("cr").value = "Phone - " + "123-456-7890";
		document.getElementById("sr").value = "Customer Email ID - " + "N/A";
		break;
		
		case "2":
		document.getElementById("ci").value = "Customer ID - " + "00002";
		document.getElementById("cr").value = "Phone - " + "111-213-1415";
		document.getElementById("sr").value = "Customer Email ID - " + "N/A";
		break;
		
		case "3":
		document.getElementById("ci").value = "Customer ID - " + "00003";
		document.getElementById("cr").value = "Phone - " + "161-718-1920";
		document.getElementById("sr").value = "Customer Email ID - " + "N/A";
		break;
		
		case "4":
		document.getElementById("ci").value = "Customer ID - " + "00004";
		document.getElementById("cr").value = "Phone - " + "212-223-245";
		document.getElementById("sr").value = "Customer Email ID - " + "N/A";
		break;
		
		case "5":
		document.getElementById("ci").value = "Customer ID - " + "00005";
		document.getElementById("cr").value = "Phone - " + "212-253-245";
		document.getElementById("sr").value = "Customer Email ID - " + "N/A";
		break;
		
		case "6":
		document.getElementById("ci").value = "Customer ID - " + "00005";
		document.getElementById("cr").value = "Phone - " + "212-293-245";
		document.getElementById("sr").value = "Customer Email ID - " + "N/A";
		break;
		
		default:
		document.getElementById("ci").value = "Customer ID";
		document.getElementById("cr").value = "Phone";
		document.getElementById("sr").value = "Customer Email ID";
		break;
	 
	 }
	  document.getElementById("b1").style.visibility = "visible";

}
  var arrHead = new Array();
    arrHead = ['Serial No', 'Product Name', 'Price', 'Quantity', 'Action', 'Total']; 

 function createTable() {
	 
	    var empTable = document.createElement('table');
        empTable.setAttribute('id', 'empTable');            // SET THE TABLE ID.

        var tr = empTable.insertRow(-1);

        for (var h = 0; h < arrHead.length; h++) {
            var th = document.createElement('th');          // TABLE HEADER.
            th.innerHTML = arrHead[h];
            tr.appendChild(th);
        }

        var div = document.getElementById('cont');
        div.appendChild(empTable);    // ADD THE TABLE TO YOUR WEB PAGE.
    }
	
    var x=0;
	
  function addRow() {
        var empTab = document.getElementById('empTable');
		var rowCnt = empTab.rows.length; 
		// GET TABLE ROW COUNT.
        var tr = empTab.insertRow(rowCnt);      // TABLE ROW.
        tr = empTab.insertRow(rowCnt);
		for (var c = 0; c < arrHead.length; c++) {
            var td = document.createElement('td');          // TABLE DEFINITION.
            td = tr.insertCell(c);
			
            if (c == 4) {           // FIRST COLUMN.
                // ADD A BUTTON.
                var button = document.createElement('input');

                // SET INPUT ATTRIBUTE.
                button.setAttribute('type', 'button');
                button.setAttribute('value', 'Remove');

                // ADD THE BUTTON's 'onclick' EVENT.
                button.setAttribute('onclick', 'removeRow(this)');

                td.appendChild(button);
            }
            else {
                // CREATE AND ADD TEXTBOX IN EACH CELL.
                switch(c)
				{
					case 0:
					x=x+1;
					td.innerHTML=x; 
					break;
								
					case 1:
					td.innerHTML = document.getElementById("sproduct").options[document.getElementById("sproduct").value].text;
					break;
										
					case 2:
					td.innerHTML = document.getElementById("pr").value.substring(11);
					break;
					
				}
            }
			
        }
		
    }
	
	
	
	function addRow_new()
	{
		var empTab = document.getElementById('empTable1');
		var rowCnt1 = empTab.rows.length; 
	    var tr = empTab.insertRow(rowCnt1); 
		var cell1 = tr.insertCell(0);
		var cell2 = tr.insertCell(1);
		var cell3 = tr.insertCell(2);
		var cell4 = tr.insertCell(3);
		cell4.setAttribute('style','border-right:0px;width:35px;padding-left:30px');
		var button = document.createElement('input');
		button.setAttribute('type', 'button');
		button.setAttribute('style', 'height:25;width:30px;border:1px solid black;margin-top:1px;padding-bottom:3px;');
        button.setAttribute('value', '+');
		button.setAttribute('onclick', 'incrQuantity(this)');
		cell4.appendChild(button);
		
		var cell5 = tr.insertCell(4);
		cell5.setAttribute('style','border-right:0px;border-left:0px;width:10px;');
		cell5.innerHTML="1";
		
		var cell6 = tr.insertCell(5);
		cell6.setAttribute('style','border-left:0px;width:35px;padding-right:30px');
		var button = document.createElement('input');
		button.setAttribute('type', 'button');
		button.setAttribute('style', 'height:25;width:30px;border:1px solid black;margin-top:1px;padding-bottom:3px');
        button.setAttribute('value', '-');
		button.setAttribute('onclick', 'decrQuantity(this)');
		cell6.appendChild(button);
		
		
		var cell7 = tr.insertCell(6);
		cell7.setAttribute('style','width:35px;padding-right:13px;');
		var button = document.createElement('input');
        button.setAttribute('type', 'button');
        button.setAttribute('value', 'Remove');
		button.setAttribute('class', 'login100-form-btn1');
		button.setAttribute('style', 'height:35px');
        button.setAttribute('onclick', 'removeRow(this)');
        cell7.appendChild(button);

		var cell8 = tr.insertCell(7);
		
		cell1.innerHTML=rowCnt1;
		cell2.innerHTML=document.getElementById("sproduct").options[document.getElementById("sproduct").value].text;
		cell3.innerHTML=document.getElementById("pr").value.substring(11);
		cell8.innerHTML=((Number)(document.getElementById("pr").value.substring(11))*1).toFixed(2);
		
		var sum=0;
		for(var i=1;i<rowCnt1+1;i++)
		{
			sum = sum + (Number)(document.getElementById("empTable1").rows[i].cells[7].innerHTML);
			
		}
		
		document.getElementById("total1").innerHTML = sum.toFixed(2);
      //  document.getElementById("empTable1").rows[rowCnt1].cells[0].innerHTML=1;
	  // document.getElementById("empTable1").rows[rowCnt1].cells[1].innerHTML=2;
		//document.getElementById("empTable1").rows[rowCnt1].cells[2].innerHTML=3;
		//document.getElementById("empTable1").rows[rowCnt1].cells[3].innerHTML=4;
		//document.getElementById("empTable1").rows[rowCnt1].cells[4].innerHTML=5;
		//document.getElementById("empTable1").rows[rowCnt1].cells[5].innerHTML=6;
		
    }
	
	  function incrQuantity(oButton) {
        var empTab = document.getElementById('empTable1');
		var i = (Number)(empTab.rows[oButton.parentNode.parentNode.rowIndex].cells[4].innerHTML);
		document.getElementById("empTable1").rows[oButton.parentNode.parentNode.rowIndex].cells[4].innerHTML = i + 1;
		document.getElementById("empTable1").rows[oButton.parentNode.parentNode.rowIndex].cells[7].innerHTML = ((Number)(document.getElementById("empTable1").rows[oButton.parentNode.parentNode.rowIndex].cells[2].innerHTML) * (i+1)).toFixed(2);
		var sum=0;
		for(var i=1;i<empTab.rows.length;i++)
		{
			sum = sum + (Number)(document.getElementById("empTable1").rows[i].cells[7].innerHTML);
			
		}
		
		document.getElementById("total1").innerHTML = sum.toFixed(2);
						
    }
	
	  function decrQuantity(oButton) {
       var empTab = document.getElementById('empTable1');
		var i = document.getElementById("empTable1").rows[oButton.parentNode.parentNode.rowIndex].cells[4].innerHTML;
		if(i!=1)
		{
			document.getElementById("empTable1").rows[oButton.parentNode.parentNode.rowIndex].cells[4].innerHTML = i - 1 ;
			document.getElementById("empTable1").rows[oButton.parentNode.parentNode.rowIndex].cells[7].innerHTML = ((Number)(document.getElementById("empTable1").rows[oButton.parentNode.parentNode.rowIndex].cells[2].innerHTML) * (i-1)).toFixed(2);
		
		var sum=0;
		for(var i=1;i<empTab.rows.length;i++)
		{
			sum = sum + (Number)(document.getElementById("empTable1").rows[i].cells[7].innerHTML);
			
		}
		
		document.getElementById("total1").innerHTML = sum.toFixed(2);
		
		
		}
					
    }
	
	
	
	
	  function removeRow(oButton) {
        var empTab = document.getElementById('empTable1');
		empTab.deleteRow(oButton.parentNode.parentNode.rowIndex); 
		var sum=0;
		for(var i=1;i<empTab.rows.length;i++)
		{
			document.getElementById("empTable1").rows[i].cells[0].innerHTML=i;
			sum = sum + (Number)(document.getElementById("empTable1").rows[i].cells[7].innerHTML);
			
		}
		
		document.getElementById("total1").innerHTML = sum.toFixed(2);
		
		
		
						
    }
	
	
	 function submit_cart() {
		 
		if(document.getElementById("cont1").style.visibility=="hidden")
		{
	 	var sp = document.createElement('span');
		sp.setAttribute('class','txt1');
		var lb = document.createElement('label');
		lb.setAttribute('style','width:100%; height:30px; color: #999999;margin:14px 0px 0px 20px');
		lb.innerHTML = "Successfully submited the document !!!";
		var div = document.getElementById('cont1');
		document.getElementById("cont1").style.visibility = "visible";
		document.getElementById("cont1").style.height = "8%";
		sp.appendChild(lb);
		div.appendChild(sp);
		setTimeout("location.reload(true);", 2000);
		
		}
		else
		{
			document.getElementById("cont1").style.visibility = "hidden";
			
		}
		
    }
	