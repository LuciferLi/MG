#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
#./TemplateProject/Common/Config/a.txt
#Dir.mkdir("../MG/ViewController")

require 'rexml/document'

xml =REXML::Document.new(File.open"../MG/Common/Config/config.xml")
Dir.mkdir("../MG/ViewController")
xml.each_element('//item') do |newbook|
$controllerName = newbook.elements['ControllerName'].text
$tabname = newbook.elements['TabTitle'].text
$dirName = $controllerName[0..$controllerName.length-15]
Dir.mkdir("../MG/ViewController/#$dirName")
Dir.mkdir("../MG/ViewController/#$dirName/Controllor")
Dir.mkdir("../MG/ViewController/#$dirName/View")
txt = File.open("../MG/ViewController/#$dirName/Controllor/#$controllerName.swift","w+")

txt.puts(
         "\n//  ZCBaseViewController.swift\n"+
         "//  MG\n\n"+
         "//  Created by cjp on 16/5/9.\n"+
         "//  Copyright © 2017年 蒙歌IOS native框架. All rights reserved.\n"+

         
         "import UIKit\n\n"+
         
         "class #$controllerName: ZCBaseViewController {\n\n"+
         
         "   override func viewDidLoad() {\n"+
         "      super.viewDidLoad()\n\n"+
         "      self.title =  '#$tabname'\n\n"+
         
         "}\n\n\n"+
         
         "   override func didReceiveMemoryWarning() {\n"+
         "      super.didReceiveMemoryWarning()\n"+
         "}\n\n"+
         
         "}\n"
        )
txt.close
end