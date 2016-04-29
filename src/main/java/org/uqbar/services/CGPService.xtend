package org.uqbar.services

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

interface CGPService {
	
	def CentroDTO getCGPsByCalleOBarrio(String calleOBarrio)
	
}

@Accessors
class CentroDTO {
	
	int numeroComuna
	String zonasIcluidas
	String nombreDirector
	String domicilio
	String telefono
	List <ServicioDTO> serviciosDTO
	
}

@Accessors
class ServicioDTO {
	
	String nombreServicio
	List<RangoServicioDTO> rangosServicioDTO
	
}

@Accessors
class RangoServicioDTO {
	
	int numeroDia
	int horarioDesde
	int minutosDesde
	int horarioHasta
	int minutosHasta
	
}