﻿using ApiAsignacion.Models;

namespace ApiAsignacion.Interfaces
{
    public interface IPaises
    {
        
        string MostrarPaises ();
        string AgregarPais(PaisIn nuevoPais);
    }
}
