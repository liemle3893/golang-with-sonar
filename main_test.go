package main

import "testing"

func TestHelloWorld(t *testing.T) {
	msg := helloMsg()
	if "Hello there" != msg {
		t.Error(`Should be "Hello there"`)
	}
}
