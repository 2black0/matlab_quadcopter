# 🚁 Simulador de Dinámica de Quadcopter en MATLAB

Un **modelo minimalista de quadcopter y simulación de vuelo estacionario (hover)** desarrollado en **MATLAB/Octave**, basado en la tesis de maestría de Francesco Sabatino en el KTH. Este proyecto demuestra la dinámica básica de cuerpo rígido de 6-DOF de un quadrotor en vuelo libre, centrándose en la evolución de la actitud y la posición a lo largo del tiempo.

---

## 📘 Referencia

Francesco Sabatino, *“A Unified Approach to Quadcopter Control”*, Tesis de Maestría KTH, 2015.  
📄 [Descargar PDF](https://www.kth.se/polopoly_fs/1.588039.1550155544!/Thesis%20KTH%20-%20Francesco%20Sabatino.pdf)

---

## 📁 Estructura del Proyecto

```
Matlab-Quadcopter-Dynamics-Simulator/
├── LICENSE                        # Licencia MIT
├── pictures/                      # Explicación visual
│   ├── control_input.jpg          # Ilustración de fuerza/torque
│   ├── figure1.jpg                # Ejemplo de salida de posición
│   ├── figure2.jpg                # Ejemplo de salida de orientación
│   └── quad_equation.jpg          # Ecuaciones de dinámica
├── project/                       # Código fuente de MATLAB
│   ├── quadvar.m                  # Parámetros del sistema y condiciones iniciales
│   ├── quadmodel.m                # Ecuaciones de actualización de estado (integración de Euler)
│   ├── quadrun.m                  # Script ejecutor principal (inicialización + simulación)
│   └── quadplot.m                 # Utilidad de graficado
└── README.md                      # Documentación del proyecto
```

---

## 🧠 Descripción General de la Dinámica del Sistema

### 📷 Ecuación de Movimiento del Quadcopter

![Quadcopter dynamics](pictures/quad_equation.jpg)

### 🧭 Diagrama de Entrada de Control

El vector de entrada de control:
- **u₁**: empuje total (thrust)
- **u₂, u₃, u₄**: torques de balanceo (roll), cabeceo (pitch) y guiñada (yaw)

![Control Input](pictures/control_input.jpg)

Estos se derivan de las velocidades de los rotores y se utilizan en las ecuaciones de Newton–Euler para simular el movimiento traslacional y rotacional.

---

## 💻 Requisitos Previos

- MATLAB **R2018a+** o GNU Octave **v4.0+**
- No se requieren toolboxes adicionales
- Agregar la carpeta `/project` a la ruta (path) de MATLAB/Octave

---

## ▶️ Cómo Ejecutar

1. Clonar o descargar el repositorio:
   ```bash
   git clone https://github.com/2black0/MATLAB-Quadcopter-Dynamics-Simulator.git
   ```

2. Abrir MATLAB u Octave y establecer el directorio de trabajo en `/project`
3. Ejecutar la simulación:

   ```matlab
   quadrun
   ```

4. El script simula **30 segundos de vuelo estacionario** y guarda dos gráficos de salida:

   * `figure1.jpg`: posición en los ejes X, Y, Z
   * `figure2.jpg`: ángulos de orientación (Roll, Pitch, Yaw)

---

## 📊 Ejemplos de Salida

| Posición (X, Y, Z)        | Orientación (Roll, Pitch, Yaw) |
| ------------------------- | ------------------------------ |
| ![](pictures/figure1.jpg) | ![](pictures/figure2.jpg)      |

---

## ⚙️ Desglose del Código

### `quadvar.m`

* Define parámetros: masa `m`, longitud del brazo `l`, empuje `b`, arrastre `d`, inercia `I_x, I_y, I_z`
* Velocidades iniciales de los rotores: `w1–w4` (estado de hover)
* Establece el paso de tiempo y la duración de la simulación

### `quadmodel.m`

* Calcula las entradas de control `u₁–u₄` a partir de las velocidades de los motores
* Aplica las ecuaciones de Newton–Euler para actualizar:

  * Posición (`x, y, z`)
  * Actitud (`ϕ, θ, ψ`)
  * Velocidades y tasas angulares
* Utiliza el método de Euler para la integración temporal

### `quadrun.m`

* Punto de entrada principal:

  * Inicializa el estado
  * Llama al paso de dinámica para cada cuadro (frame)
  * Guarda los datos y llama a `quadplot`

### `quadplot.m`

* Grafica la posición y la orientación frente al tiempo
* Guarda las figuras como `figure1.jpg` y `figure2.jpg`

---

## 🧪 Posibles Extensiones

* 🧭 **Control PID / LQR**: Añadir una ley de control en `quadmodel.m`
* 🕹️ **Seguimiento de Trayectoria**: Definir setpoints variables en el tiempo para la posición/orientación
* 🎥 **Animación 3D**: Usar `plot3` o `patch` para renderizar el movimiento del quadrotor
* 📓 **Live Script**: Convertir a `.mlx` para una interfaz interactiva

---

## 📄 Licencia

Este proyecto está bajo la [Licencia MIT](LICENSE).

---

## 🙋‍♂️ Créditos

Desarrollado por **Ardy Seto Priambodo**
✉️ [2black0@gmail.com](mailto:2black0@gmail.com)

---

## 🚀 Citación

Si utilizas este proyecto en un trabajo académico, por favor cita:

```bibtex
@misc{matlab_quadcopter,
  author       = {Ardy Seto Priambodo},
  title        = {MATLAB Quadcopter Simulator},
  year         = {2023},
  howpublished = {\url{https://github.com/2black0/MATLAB-Quadcopter-Dynamics-Simulator}},
  note         = {Based on Francesco Sabatino's thesis at KTH}
}
```

---

¡Vuela seguro (virtualmente)! 🚁
