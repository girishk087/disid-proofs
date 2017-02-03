package org.springframework.roo.relatedreadonly.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import org.springframework.roo.relatedreadonly.domain.Vet;

/**
 * = VetsCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Vet.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class VetsCollectionThymeleafController {
}
