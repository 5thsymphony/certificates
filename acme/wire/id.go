package wire

import (
	"encoding/json"
	"fmt"
	"strings"

	"go.step.sm/crypto/kms/uri"
)

type UserID struct {
	Name   string `json:"name,omitempty"`
	Domain string `json:"domain,omitempty"`
	Handle string `json:"handle,omitempty"`
}

type DeviceID struct {
	Name     string `json:"name,omitempty"`
	Domain   string `json:"domain,omitempty"`
	ClientID string `json:"client-id,omitempty"`
	Handle   string `json:"handle,omitempty"`
}

func ParseUserID(data []byte) (id UserID, err error) {
	err = json.Unmarshal(data, &id)
	return
}

func ParseDeviceID(data []byte) (id DeviceID, err error) {
	err = json.Unmarshal(data, &id)
	return
}

type ClientID struct {
	Scheme   string
	Username string
	DeviceID string
	Domain   string
}

// ParseClientID parses a Wire clientID. The ClientID format is as follows:
//
//	"wireapp://CzbfFjDOQrenCbDxVmgnFw!594930e9d50bb175@wire.com",
//
// where '!' is used as a separator between the user id & device id.
func ParseClientID(clientID string) (ClientID, error) {
	clientIDURI, err := uri.Parse(clientID)
	if err != nil {
		return ClientID{}, fmt.Errorf("invalid Wire client ID URI %q: %w", clientID, err)
	}
	if clientIDURI.Scheme != "wireapp" {
		return ClientID{}, fmt.Errorf("invalid Wire client ID scheme %q; expected \"wireapp\"", clientIDURI.Scheme)
	}
	fullUsername := clientIDURI.User.Username()
	parts := strings.SplitN(fullUsername, "!", 2)
	if len(parts) != 2 {
		return ClientID{}, fmt.Errorf("invalid Wire client ID username %q", fullUsername)
	}
	return ClientID{
		Scheme:   clientIDURI.Scheme,
		Username: parts[0],
		DeviceID: parts[1],
		Domain:   clientIDURI.Host,
	}, nil
}
