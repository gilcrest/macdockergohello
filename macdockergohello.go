package macdockergohello

import (
	"github.com/rs/zerolog"
	"os"
)

func HelloWorld() {
	lgr := zerolog.New(os.Stdout).Level(zerolog.DebugLevel)
	lgr = lgr.With().Timestamp().Logger()
	lgr.Debug().Msg("Hello, World!")
}
