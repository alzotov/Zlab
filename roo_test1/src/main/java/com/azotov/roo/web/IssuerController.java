package com.azotov.roo.web;
import com.azotov.roo.model.Issuer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/issuers")
@Controller
@RooWebScaffold(path = "issuers", formBackingObject = Issuer.class)
@RooWebJson(jsonObject = Issuer.class)
public class IssuerController {
}
