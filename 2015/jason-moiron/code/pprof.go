import "os"
import "runtime/pprof"

func startProfile(destpath string) {
	f, err := os.Create(destpath)
	if err != nil {
		panic(err)
	}
	pprof.StartCPUProfile(f) // HL
}
