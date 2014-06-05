package com.azotov.roo.web;
import com.azotov.roo.model.Configuration;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/configurations")
@Controller
@RooWebScaffold(path = "configurations", formBackingObject = Configuration.class)
@RooWebJson(jsonObject = Configuration.class)
public class ConfigurationController {
}
