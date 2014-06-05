package com.azotov.roo.web;
import com.azotov.roo.model.Branch;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/branches")
@Controller
@RooWebScaffold(path = "branches", formBackingObject = Branch.class)
@RooWebJson(jsonObject = Branch.class)
public class BranchController {
}
