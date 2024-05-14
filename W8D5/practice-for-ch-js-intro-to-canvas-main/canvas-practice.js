document.addEventListener("DOMContentLoaded", function() {
  // Your code here
  const canvasEle = document.getElementById('myCanvas');
  const ctx = canvasEle.getContext('2d');
  ctx.fillStyle = "red"; 
  ctx.fillRect(100,100,100,50); 

  ctx.beginPath();
  ctx.arc(75, 75, 20, 0, Math.PI * 2, true);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 5;
  ctx.stroke();

  ctx.fillStyle = "yellow";
  ctx.fill();
});