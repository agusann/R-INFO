programa ejemplo
procesos
  proceso JuntarFlor (ES flores:numero)
  comenzar
    mientras (HayFlorEnLaEsquina)
      tomarFlor
      flores:=flores + 1
  fin
  
  proceso Depositar(E flores:numero)
  comenzar
    repetir flores
      depositarFlor
  fin
  proceso recorrerAvenida(ES flores:numero; ES EsqVacias:numero)
  comenzar
    EsqVacias:=0
    flores:=0
    repetir 99
      si (HayFlorEnLaEsquina)
        JuntarFlor (flores)
      sino
        EsqVacias:=EsqVacias + 1
      mover
    si (~HayFlorEnLaEsquina)
      EsqVacias:=EsqVacias + 1
    JuntarFlor (flores)
    Depositar(flores)
  fin
areas
  a1: AreaP (1,1,1,100)
  a2: AreaP (3,1,3,100)
  a3: AreaP (5,1,5,100)
robots
  robot robot1
  variables 
    flores,EsqVacias:numero
  comenzar
    recorrerAvenida(flores,EsqVacias)
    Informar ('La cantidad de flores que junto ', flores)
    Informar ('La cantidad de esquinas vacias ', EsqVacias)
  fin
variables
  R1: robot1
  R2: robot1
  R3: robot1
comenzar
  AsignarArea(R1, a1)
  AsignarArea(R2, a2)
  AsignarArea(R3, a3)
  Iniciar(R1, 1,1)
  Iniciar(R2, 3,1)
  Iniciar(R3, 5,1)
fin