// Switch visibility of the element
function HideOrShowObj(obj)
{
  if (obj.style.display == 'none') {
    obj.style.display = '';
  } else {
    obj.style.display = 'none';
  }
}

// Switch visibility of the with the given id element
function HideOrShowById(id)
{
  HideOrShowObj(document.getElementById(id));
}

// Switch visibility of elements with the given name
function HideOrShowByName(name)
{
  var elems = document.getElementsByName(name);
  for (i=0; i<elems.length; ++i)
  {
    HideOrShowObj(elems[i]);
  }
}

// Takes all the rows from the given table body
// and sorts them using the cmp and mov.
// tab: tbody of the table we want to sort
// cmp: compare function for Array::sort
// mov: should return an array of rows
function SortRows(tab,cmp,mov)
{
  var arr = new Array();
  // extract the items
  while (tab.hasChildNodes())
  {
    var add = mov(tab);
    if (add.length) {
      arr.push(add);
    }
  }
  // sort them
  arr.sort(cmp);
  // return them
  // reassign classes (for background colour)
  var cl = 0;
  while (arr.length)
  {
    var item = arr.shift();
    while (item.length) {
      var row = item.shift();
      row.className = "r"+cl;
      tab.appendChild(row);
    }
    cl = (cl+1)%2;
  }
}

