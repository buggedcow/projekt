document.addEventListener("readystatechange",() => {
  if (document.readyState === "interactive") {  
     document.querySelectorAll("table").forEach((table) => {
     table.setAttribute("id", "md-table"); 
     })}});
