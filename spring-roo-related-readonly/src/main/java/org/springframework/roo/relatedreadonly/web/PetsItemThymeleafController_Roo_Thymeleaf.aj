// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.relatedreadonly.web;

import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Arrays;
import java.util.Locale;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.relatedreadonly.domain.Pet;
import org.springframework.roo.relatedreadonly.domain.reference.PetType;
import org.springframework.roo.relatedreadonly.service.api.PetService;
import org.springframework.roo.relatedreadonly.web.PetsItemThymeleafController;
import org.springframework.roo.relatedreadonly.web.PetsItemThymeleafLinkFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect PetsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: PetsItemThymeleafController: @Controller;
    
    declare @type: PetsItemThymeleafController: @RequestMapping(value = "/pets/{pet}", name = "PetsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource PetsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<PetsItemThymeleafController> PetsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param petService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public PetsItemThymeleafController.new(PetService petService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setPetService(petService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(PetsItemThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource PetsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void PetsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<PetsItemThymeleafController> PetsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void PetsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<PetsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Pet
     */
    @ModelAttribute
    public Pet PetsItemThymeleafController.getPet(@PathVariable("pet") Long id, Locale locale, HttpMethod method) {
        Pet pet = null;
        if (HttpMethod.PUT.equals(method)) {
            pet = petService.findOneForUpdate(id);
        } else {
            pet = petService.findOne(id);
        }
        
        if (pet == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Pet", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return pet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView PetsItemThymeleafController.show(@ModelAttribute Pet pet, Model model) {
        return new ModelAndView("pets/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("pet")
    public void PetsItemThymeleafController.initPetBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PetsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PetsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
        model.addAttribute("type", Arrays.asList(PetType.values()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView PetsItemThymeleafController.editForm(@ModelAttribute Pet pet, Model model) {
        populateForm(model);
        
        return new ModelAndView("pets/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param version
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView PetsItemThymeleafController.update(@Valid @ModelAttribute Pet pet, @RequestParam("version") Integer version, BindingResult result, Model model) {
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("pets/edit");
        }
        Pet savedPet = getPetService().save(pet);
        UriComponents showURI = getItemLink().to(PetsItemThymeleafLinkFactory.SHOW).with("pet", savedPet.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> PetsItemThymeleafController.delete(@ModelAttribute Pet pet) {
        getPetService().delete(pet);
        return ResponseEntity.ok().build();
    }
    
}
