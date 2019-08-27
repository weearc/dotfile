package main

import (
	"fmt"
	"os"
	"os/exec"

	"gopkg.in/urfave/cli.v1"
)

func main() {
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
