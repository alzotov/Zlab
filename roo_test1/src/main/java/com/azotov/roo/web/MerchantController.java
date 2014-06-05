package com.azotov.roo.web;
import com.azotov.roo.model.Merchant;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/merchants")
@Controller
@RooWebScaffold(path = "merchants", formBackingObject = Merchant.class)
@RooWebJson(jsonObject = Merchant.class)
public class MerchantController {
}
