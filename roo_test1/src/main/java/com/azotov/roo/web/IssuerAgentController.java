package com.azotov.roo.web;
import com.azotov.roo.model.IssuerAgent;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/issueragents")
@Controller
@RooWebScaffold(path = "issueragents", formBackingObject = IssuerAgent.class)
@RooWebJson(jsonObject = IssuerAgent.class)
public class IssuerAgentController {
}
