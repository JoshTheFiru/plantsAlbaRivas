public with sharing class SpeciesService {
        @AuraEnabled(cacheable=true)                        
    public static List<Species__c> getAllSpecies() {       
        return [
            SELECT Id, Name, Description__c, Image_URL__c, Location__c
            FROM Species__c
        ];
    }
}

/*@AuraEnabled para poder llamar al método desde el LWC, sirve para exponer el método tanto a Aura como a LWC
Además, como es una operación de lectura, para que sea eficiente, podrá ser cacheable. 
Si quiero llamar a un método desde un LWC, debe ser estático 
ya que las llamadas del front al back deben ser stateless, no deben mantener el estado*/