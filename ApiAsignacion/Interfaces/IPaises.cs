using ApiAsignacion.Models;

namespace ApiAsignacion.Interfaces
{
    public interface IPaises
    {
        
        string MostrarPaises ();
        string AgregarPais(PaisIn nuevoPais);
        string ActualizarPais(int id, PaisIn paisActualizado);
        string EliminarPais(int id);
    }
}
