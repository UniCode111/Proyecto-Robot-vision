import cv2
import numpy as np

print("Hola desde la Raspberry!")
print("Versión de OpenCV:", cv2.__version__)

# Crear una imagen negra de 200x200 pixeles
img = np.zeros((200, 200, 3), dtype=np.uint8)

# Dibujar un círculo blanco en el centro
cv2.circle(img, (100, 100), 50, (255, 255, 255), -1)

# Guardar la imagen
cv2.imwrite("prueba_circulo.png", img)

print("Imagen generada: prueba_circulo.png")
