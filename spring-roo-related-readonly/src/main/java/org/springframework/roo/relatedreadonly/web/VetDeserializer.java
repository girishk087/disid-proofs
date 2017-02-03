package org.springframework.roo.relatedreadonly.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;
import org.springframework.roo.relatedreadonly.domain.Vet;
import org.springframework.roo.relatedreadonly.service.api.VetService;

/**
 * = VetDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Vet.class)
public class VetDeserializer extends JsonObjectDeserializer<Vet> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private VetService vetService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param vetService
     * @param conversionService
     */
    @Autowired
    public VetDeserializer(VetService vetService, ConversionService conversionService) {
        this.vetService = vetService;
        this.conversionService = conversionService;
    }
}
