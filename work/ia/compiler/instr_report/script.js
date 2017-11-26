// switch visibility of the corresponding rows in itable
function HideOrShowStatus(n)
{
  var name = "status"+n;
  HideOrShowByName(name);
}

// for compatibility with Eclipse browser
function RefreshItab()
{
  var chb = document.getElementById("ch1");
  if (!chb) return;
  chb.checked = true;
  chb = document.getElementById("ch3");
  chb.checked = true;
  chb = document.getElementById("ch4");
  chb.checked = true;
}

// expands/collapses the instruction IDs in itable
function ExpandOrCollapseIDs()
{
  HideOrShowByName("idots");
  HideOrShowByName("iname");
  // change button
  var obj = document.getElementById("iid_exp").childNodes[0];
  if (obj.nodeValue=="+") {
    obj.nodeValue = "-";
  }
  else {
    obj.nodeValue = "+";
  }
}

// expands/collapses an element tree
function ExpandOrCollapseElTree(name)
{
  var id1 = name+"1";
  var id2 = name+"2";
  HideOrShowById(id1);
  HideOrShowById(id2);
}

// +1 or -1, set by Sort
var SortDir = 0;
// compares two strings
function CmpStr(a,b)
{
  if (a < b) {
    return -1*SortDir;
  }
  else if (a > b) {
    return SortDir;
  }
  return 0;
}
// sort by syntax
function SortCmpSyn(a,b)
{
  // get the cells
  var c1 = a[0].cells[0];
  var c2 = b[0].cells[0];
  // compare
  return CmpStr(c1.innerHTML,c2.innerHTML);
}
// sort by status
function SortCmpStat(a,b)
{
  // get the cells
  var c1 = a[0].cells[1];
  var c2 = b[0].cells[1];
  // compare classes ("status0" is more than "status3")
  return -CmpStr(c1.className,c2.className);
}
// sort by internal id
function SortCmpId(a,b)
{
  // get the cells
  var c1 = a[0].cells[2];
  var c2 = b[0].cells[2];
  // compare
  return CmpStr(c1.innerHTML,c2.innerHTML);
}
// for table sort
function SortMov(t)
{
  var arr = new Array();
  var grp = "";
  // move the rows that belong together
  while (t.hasChildNodes())
  {
    var chld = t.firstChild;
    if (chld.nodeName=="TR")
    {
      // the first tr encountered
      if (grp=="") {
        grp = chld.className;
      }
      // is it the same name?
      if (grp==chld.className) {
        arr.push(chld);
      }
      else {
        // it's a new group
        return arr;
      }
    }
    t.removeChild(chld);
  }
  return arr;
}
// sorts the instruction table
function Sort(cid)
{
  var aid = cid+"_sort";
  var a = document.getElementById(aid);
  // change the appearance
  if (a.getAttribute('class')=="fake_a_off")
  {
    a.setAttribute('class',"fake_a");
  }
  else
  {
    if (a.innerHTML=="\u2227") {
      a.innerHTML = "\u2228"; //or
    }
    else {
      a.innerHTML = "\u2227"; //and
    }
  }
  // set direction
  if (a.innerHTML=="\u2227") {
    SortDir = 1;
  }
  else {
    SortDir = -1;
  }
  // call the actual sorting
  var tbody = document.getElementById("tbody");
  /**/ if (cid=="syn") {
    SortRows(tbody,SortCmpSyn,SortMov);
  }
  else if (cid=="stat") {
    SortRows(tbody,SortCmpStat,SortMov);
  }
  else if (cid=="id") {
    SortRows(tbody,SortCmpId,SortMov);
  }
}

