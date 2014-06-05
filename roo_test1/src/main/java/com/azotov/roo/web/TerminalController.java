package com.azotov.roo.web;
import com.azotov.roo.model.Terminal;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/terminals")
@Controller
@RooWebScaffold(path = "terminals", formBackingObject = Terminal.class)
@RooWebJson(jsonObject = Terminal.class)
public class TerminalController {
}
