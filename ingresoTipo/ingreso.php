<?php
include_once("../bd/conexion.php");
class Ingreso
{
  public function obtenerUsuario($usuario)
  {
    $consulta = "SELECT * FROM usuario where usuario='$usuario'";
    $rs = mysqli_query(conexion::obtenerInstancia(), $consulta);
    if (mysqli_num_rows($rs) > 0) {
      while ($fila = mysqli_fetch_assoc($rs)) {
        $data[] = $fila;
      }
      return $data;
    } else
      return $rs;
  }




  public function editar($id,$detalle)
  {

    $sql = "UPDATE `ingreso_tipo` SET `nombre`='$detalle' WHERE `id`='$id';";
    $rs = mysqli_query(conexion::obtenerInstancia(), $sql);
    return $rs;
  }


  public function obtenerTipoIngreso($id)
  {
    $data=array();
    $consulta = "SELECT * FROM ingreso_tipo where id='$id'";
    $rs = mysqli_query(conexion::obtenerInstancia(), $consulta);
    if (mysqli_num_rows($rs) > 0) {
      while ($fila = mysqli_fetch_assoc($rs)) {
        $data[] = $fila;
      }
      return $data;
    } else
      return $rs;
  }  



    public function nuevoIngresoTipo($nombre) {
    $sql = "INSERT INTO `ingreso_tipo`
    (`nombre`)
      VALUES ('$nombre');";
    //echo $sql;
    //exit;
    $rs = mysqli_query(conexion::obtenerInstancia(), $sql);
    //$rs = mysqli_insert_id(conexion::obtenerInstancia());
    return $rs;
  }




  //lista los ingresos por tipo
  public function listaIngresoTipo()
   {
      $data=array();
      $sql="SELECT * FROM ingreso_tipo";
      $rs = mysqli_query(conexion::obtenerInstancia(), $sql);
      if(mysqli_num_rows($rs) >0)
      {
        while($fila = mysqli_fetch_assoc($rs))
        {
          $data[] = $fila;
        }
      }
      return $data;
      
    }
}