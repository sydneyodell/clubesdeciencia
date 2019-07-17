/**
Simple Graph relations

Idea taken from Ira Winder for 11.S195 
Adapted here in different code by Nina Lutz for Clubes de Ciencia 2019

*/

ArrayList<Node> nodes1;
ArrayList<Edge> edges1;
ArrayList<Node> nodes2;
ArrayList<Edge> edges2;
Table data;
int numNodes;

// Runs Once
void setup() {
  size(1400, 700);
  data = loadTable("clubInfo.csv", "header");
  initialize();
  BFS bfs = new BFS(nodes1, edges1);
  bfs.colorNode();
   BFS bfs2 = new BFS(nodes2, edges2);
  bfs2.colorNode();
}

// Runs Over and Over at 60 - FPS
void draw() {
  
  background(255); // Black Background

  // Draw Edges
  for (Edge e: edges1) {
    e.draw();
  }
  
  
  // Draw Edges
  for (Edge e: edges2) {
    e.draw();
  }
    
  // Draw Nodes in graph1
  for (Node p: nodes1) {
    p.update(); // updates location IF selected
    p.drawNode();
  }
  
 // Draw Nodes in graph2
  for (Node p: nodes2) {
    p.update(); // updates location IF selected
    p.drawNode();
  }
  
}

void mousePressed() {
  for (Node p: nodes1) {
    if(p.checkSelection()) {
      break;
    } 
  }
  for (Node p: nodes2) {
    if(p.checkSelection()) {
      break;
    } 
  }
}

void mouseReleased() {
  for (Node p: nodes1) {
    p.locked = false;
  }
  
  for (Node p: nodes2) {
    p.locked = false;
  }
}

void keyPressed() {
  if(key == ' ') initialize();
}

void initialize() {
  nodes1 = new ArrayList<Node>();
  nodes2 = new ArrayList<Node>();
  edges1 = new ArrayList<Edge>();
  edges2 = new ArrayList<Edge>();
  
  //Make nodes -- we do this by hand to make it easier but you can generate this in a different way! :) 
  Node n1 = new Node("1", "2", "3");
  Node n2 = new Node("2", "4", "5");
  Node n3 = new Node("3", "6", "7");
  Node n4 = new Node("4");
  Node n5 = new Node("5");
  Node n6 = new Node("6");
  Node n7 = new Node("7");
  
  //Add to nodes1 
  nodes1.add(n1);  nodes1.add(n2);  nodes1.add(n3);  nodes1.add(n4);  nodes1.add(n5);
  nodes1.add(n6);  nodes1.add(n7);
  
    
  //Make nodes -- we do this by hand to make it easier but you can generate this in a different way! :) 
  Node n8 = new Node("8", "9", "10");
  Node n9 = new Node("9", "11", "12");
  Node n10 = new Node("10", "13", "14");
  Node n11 = new Node("11");
  Node n12 = new Node("12");
  Node n13 = new Node("13");
  Node n14 = new Node("14");
  
  //Add to nodes 2
  nodes2.add(n8); nodes2.add(n9); nodes2.add(n10); nodes2.add(n11); nodes2.add(n12); 
  nodes2.add(n13); nodes2.add(n14);

  //Make edges
  Edge e1 = new Edge(n1, n2); Edge e2 = new Edge(n1, n3);
  Edge e3 = new Edge(n2, n4); Edge e4 = new Edge(n2, n5); 
  Edge e5 = new Edge(n3, n6); Edge e6 = new Edge(n3, n7); 
  
  //add to edges collection 
  edges1.add(e1); edges1.add(e2); edges1.add(e3); edges1.add(e4); edges1.add(e5);
  edges1.add(e6); 

   //Make edges
  Edge e8 = new Edge(n8, n9); Edge e9 = new Edge(n8, n10);
  Edge e10 = new Edge(n9, n11); Edge e11 = new Edge(n9, n12); 
  Edge e12 = new Edge(n10, n13); Edge e13 = new Edge(n10, n14); 
  
  //add to edges collection 
  edges2.add(e8); edges2.add(e9); edges2.add(e10); edges2.add(e11); edges2.add(e12);
  edges2.add(e13); 
}
