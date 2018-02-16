package degops

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestHello(t *testing.T) {
	actual := Hello()
	assert.Equal(t, "hello", actual)
}
