import { LightningElement, wire } from 'lwc';
import getAllSpecies from "@salesforce/apex/SpeciesService.getAllSpecies";          //Importando el método Apex. Lo primero es el nombre que se le da, no ha de coincidir. 

export default class SpeciesList extends LightningElement {
    @wire(getAllSpecies)            //Con esto le decimos al Lightning Data Service que le delegamos la invocación de este método
    species;                        //Con esta llamada además se generan dos campos: 
                                    //species.data --> datos devueltos por Apex
                                    //species.error --> si error se almacena aquí. 
}