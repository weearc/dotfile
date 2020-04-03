package main

import (
	"fmt"
	"os"
	"os/exec"
//	"log"
//	"io/ioutil"
//	"gopkg.in/yaml.v2"
	"gopkg.in/urfave/cli.v1"
)

//type conf struct {
//	Enabled bool   `yaml:"enabled"`
// Path    string `yaml:"path"`
//}

//func (c *conf) getConf() *conf {

//    yamlFile, err := ioutil.ReadFile("conf.yaml")
//    if err != nil {
//        log.Printf("yamlFile.Get err   #%v ", err)
  //  }
   // err = yaml.Unmarshal(yamlFile, c)
   // if err != nil {
     //   log.Fatalf("Unmarshal: %v", err)
  //  }

   // return c
//}

func main() {

//	var c conf
//  c.getConf()

	app := cli.NewApp()
	app.Name = "Initialize tool"
	app.Usage = "To set up a new system fast."
	app.Version = "0.0.1"

	app.Commands = []cli.Command{
		{
			Name: "typora",
			//      Aliases: []string{"a"},
			Usage: "change typora font",
			Subcommands: []cli.Command{
				{
					Name:  "night",
					Usage: "Night theme",
					Action: func(c *cli.Context) error {
						cmd := exec.Command("sed", "-i", "s/font-family: /font-family: 'Microsoft YaHei',/g", "/home/ddqi/.config/Typora/themes/night.css")
						cmd.Start()
						fmt.Printf("Done.")
						return nil
					},
				},
				{
					Name:  "newsprint",
					Usage: "Newsprint theme",
					Action: func(c *cli.Context) error {
						cmd := exec.Command("sed", "-i", "s/font-family: /font-family: 'Microsoft YaHei',/g", "/home/ddqi/.config/Typora/themes/newsprint.css")
						cmd.Start()
						fmt.Printf("Done.")
						return nil
					},
				},
			},
		},
	}

	app.Run(os.Args)
}
