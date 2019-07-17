//Use this class to color 

class BFS{
  ArrayList<Node> nodes;
  ArrayList<Edge> edges;
  
  BFS(ArrayList<Node> nodes, ArrayList<Edge> edges){
    this.nodes = nodes;
    this.edges = edges;
  }
  
  void colorNode(){
    //Hint -- 1 is the root 
    for(int i = 0; i<nodes.size(); i++){
      //Color node of name 1 
      if(int(nodes.get(i).name) == 1){
        color c =  color(3, 99, 99);
        nodes.get(i).fillColor = c; 
      }
         if(int(nodes.get(i).name) == 2){
        color c =  color(88, 7, 0);
        nodes.get(i).fillColor = c;
      }
         if(int(nodes.get(i).name) == 3){
        color c =  color(88, 7, 0);
        nodes.get(i).fillColor = c; //this changes the color 
      }
         if(int(nodes.get(i).name) == 4){
        color c =  color(150, 99, 150);
        nodes.get(i).fillColor = c; //this changes the color 
      }
         if(int(nodes.get(i).name) == 5){
        color c =  color(150, 99, 150);
        nodes.get(i).fillColor = c; //this changes the color 
      }
         if(int(nodes.get(i).name) == 6){
        color c =  color(150, 99, 150);
        nodes.get(i).fillColor = c; //this changes the color 
      }
         if(int(nodes.get(i).name) == 7){
        color c =  color(150, 99, 150);
        nodes.get(i).fillColor = c; //this changes the color 
      }
         if(int(nodes.get(i).name) == 8){
        color c =  color(0, 99, 67);
        nodes.get(i).fillColor = c; //this changes the color 
      }
    
    
    
      
      //Now how would you color the rest of the nodes to be in BFS colors?
    }
  }
}
