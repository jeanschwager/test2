
    radius = 1.0;
    h = 0.0625;
    rho = 0.5; 
    thickness =  rho*radius;

    
    p0 = newp; Point(p0) = {0., 0., 0., h};
    p1 = newp; Point(p1) = {radius*(1-0.5*rho), 0., 0., h};
    p2 = newp; Point(p2) = {radius*(1+0.5*rho), 0., 0., h};
    p3 = newp; Point(p3) = {0., radius*(1+0.5*rho), 0., h};
    p4 = newp; Point(p4) = {0., radius*(1-0.5*rho), 0., h};
    
    l1 = newl; Line(l1) = {p1, p2};
    l2 = newl; Circle(l2) = {p2, p0, p3};
    l3 = newl; Line(l3) = {p3, p4};
    l4 = newl; Circle(l4) = {p4, p0, p1};
    
    ll0 = newll; Line Loop(ll0) = {l1, l2, l3, l4};
    s0 = news; Plane Surface(s0) = {ll0};
    
    Physical Surface(10) = {s0};
    Physical Line(1) = {l1};
    Physical Line(2) = {l2};
    Physical Line(3) = {l3};
    Physical Line(4) = {l4};
    