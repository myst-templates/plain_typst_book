# Chapter 2 

An impression from the book [mechanics and special relativity](https://freekpols.github.io/Mechanica/).

## Representations

Physics problems and concepts can be represented in multiple ways, each offering a different perspective and set of insights. The ability to translate between these representations is one of the most important skills you will develop as a physics student. In this section, we examine three key forms of representation: equations, graphs and drawings, and verbal descriptions using the context of a base jumper, see {numref}`fig_basejump`.

```{figure} ../figures/ch0_Basejumper.jpg
:label: fig_basejump
:width: 70%
:alt: A base jumper jumping from a very high tower.

A base jumper is used as context to get familiar with representation, picture from https://commons.wikimedia.org/wiki/File:04SHANG4963.jpg
```

### Verbal descriptions

Words are indispensable in physics. Language is used to describe a phenomenon, explain concepts, pose problems and interpret results. A good verbal description makes clear:
- What is happening in a physical scenario;
- What assumptions are being made (e.g., frictionless surface, constant mass);
- What is known and what needs to be found.

```{example} Base jumper: Verbal description
Let us consider a base jumper jumping from a 300 m high building. We take that the jumper drops from that height with zero initial velocity. We will assume that the stunt is performed safely and in compliance with all regulations/laws. Finally, we will assume that the problem is 1-dimensional: the jumper drops vertically down and experiences only gravity, buoyancy and air-friction. 

We know (probably from experience) that the jumper will accelerate. Picking up speed increases the drag force acting on the jumper, slowing the *acceleration* (meaning it still accelerates!). The speed keeps increasing until the jumper reaches its terminal velocity, that is the velocity at which the drag (+ buoyancy) exactly balance gravity and the sum of forces on the jumper is zero. The jumper no longer accelerates. 

Can we find out what the terminal velocity of this jumper will be and how long it takes to reach that velocity?
```

### Visual representations

Visual representations help us interpret physical behavior at a glance. Graphs, motion diagrams, free-body diagrams, and vector sketches are all ways to make abstract ideas more concrete.
- **Graphs** (e.g., position vs. time, velocity vs. time) reveal trends and allow for estimation of slopes and areas, which have physical meanings like velocity and displacement.
- **Drawings** help illustrate the situation: what objects are involved, how they are moving, and what forces act on them.

````{example} Base jumper: Free body diagram
The situation is sketched in {numref}`fig:HailStoneFriction` using a Free body diagram. Note that all details of the jumper are ignored in the sketch.


```{figure} ../figures/ch0_HailStoneFriction.svg
:label: fig:HailStoneFriction
:width: 30%
:align: center
:alt: A free body diagram of a base jumper of mass m, with downward velocity and gravitational force, and upward buoyant and friction force.

Forces acting on the jumper. 
```

- $m$ = mass of jumper (in kg);  
- $v$ = velocity of jumper (in m/s);  
- $F_g$ = gravitational force (in N);  
- $F_f$ = drag force by the air (in N);  
- $F_b$ = buoyancy (in N): like in water also in air there is an upward force, equal to the weight of the displaced air.

````

### Equations

Equations are the compact, symbolic expressions of physical relationships. They tell us how quantities like velocity, acceleration, force, and energy are connected.

```{example} Base jumper: equations
The forces acting on the jumper are already shown in {numref}`fig:HailStoneFriction`. Balancing of forces tells us that the jumper might reach a velocity such that the drag force and buoyancy exactly balance gravity and the jumper no longer accelerates:

$$F_g = F_f + F_b$$

We can specify each of the force:

$$\begin{aligned}
F_g &= - mg = -\rho_p V_p g\\
F_f &= \frac{1}{2}\rho_{air}C_D A v^2\\
F_b &= \rho_{air} V_p g
\end{aligned}
$$

with $g$ the acceleration of gravity, $\rho_p$ the density of the jumper ($\approx 10^3 \mathrm{ kg/m}^3$), $V_p$ the volume of the jumper, $\rho_{air}$ the density of air ($\approx 1.2 \mathrm{ kg/m}^3$), $C_D$ the so-called drag coefficient, $A$ the frontal area of the jumper as seen by the air flowing past the jumper.
```

A physicist is able to switch between these representations, carefully considering which representations suits best for the given situation. We will practice these when solving problems.

```{danger}
Note that in the example above we neglected directions. In our equation we should have been using vector notation, which we will cover in one of the next sections in this chapter.
```

